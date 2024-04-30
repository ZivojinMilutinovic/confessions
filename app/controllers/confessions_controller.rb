class ConfessionsController < ApplicationController
  before_action :authorize_admin!, only: [:destroy, :approve]

  def new
    @categories = Category.all
  end

  def index
    # @confession_ids = session[:confession_ids]
    # if params[:page].blank?
    #   @confession_ids = Confession.pluck(:id).shuffle
    # end
    @confession_id = params[:confession_id].present? ? params[:confession_id].to_i : nil
    result = get_confessions()
    @pagy, @confessions = pagy_countless(result)
    render "scrollable_list" and return if params[:page]

    if request.get?
      render :index, formats: :html
    else
      render :index, formats: :turbo_stream
    end
  end

  def create
    handle_unauthorized and return if params[:confession].blank?

    @confession = Confession.new
    @confession.title = params[:confession][:title]
    @confession.body = params[:confession][:body]
    @confession.status = :pending
    challenge_id = params[:confession][:challenge_id]
    @confession.challenge_id = challenge_id if challenge_id.present?

    if @confession.save
      @confession.confession_categories.create(category_id: params[:confession][:category_id])
      redirect_to confessions_path(format: :html, challenge_id: challenge_id, confession_id: @confession.id) and return
    end

    path = challenge_id.present? ? participate_challenge_path(challenge_id) : new_confession_path
    redirect_to path
  end

  def like_dislike
    handle_unauthorized and return if params[:likes].blank? && params[:dislikes].blank?
    handle_unauthorized and return if params[:likes].present? && ![1, -1].include?(params[:likes])
    handle_unauthorized and return if params[:dislikes].present? && ![1, -1].include?(params[:dislikes])

    confession = Confession.find(params[:id])
    params[:likes] == 1 ? confession.likes += 1 : confession.likes -= 1 if params[:likes].present?
    params[:dislikes] == 1 ? confession.dislikes += 1 : confession.dislikes -= 1 if params[:dislikes].present?
    confession.save

    render json: { status: 'success', likes: confession.likes, dislikes: confession.dislikes }
  end

  def destroy
    confession = Confession.find(params[:id])
    render json: { message: "Confession not found"} and return if confession.blank?

    confession.destroy

    redirect_to '/confessions'
  end

  def approve
    confession = Confession.find(params[:id])
    render json: { message: "Confession not found"} and return if confession.blank?

    confession.status = params[:status].to_sym
    confession.save
    redirect_to '/confessions'
  end

  private

  def category_name(category_id)
    return "All categories" if category_id.zero?

    category = @categories.find {|el| el.id == category_id }
    return category.name
  end

  def get_confessions
    result = nil
    @category_id, title, challenge_id = params[:category_id].to_i, params[:title], params[:challenge_id]
    @categories = Category.all
    @category_name = category_name(@category_id)
    @show_search = challenge_id.blank?

    if @category_id.zero?
      result = Confession.includes(:categories)
    else
      result = Confession.joins(:categories)
                .includes(:categories)
                .where(categories: { id: @category_id })
    end
    result = status_filter(result)
    # result = result.where(id: @confession_ids.take(Pagy::DEFAULT[:items]+1)) # this is needed for randomness
    # session[:confession_ids] = @confession_ids.drop(Pagy::DEFAULT[:items])
    result = result.where(challenge_id: challenge_id.to_i) if challenge_id.present?
    result = result.where("title ILIKE ?", "%#{title}%") if title.present?
    result = result.order(id: :desc)

    return result
  end

  def status_filter(result)
      return result.where(status: :approved) unless current_user&.is_admin?
      return result if params[:status].blank? || :all == params[:status].to_sym
      return result.where(status: params[:status])
  end
end
