class CommentsController < ApplicationController
  before_action :authorize_admin!, only: [:destroy, :approve]
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
    else
      puts @comment.errors
    end

    redirect_to confessions_path
  end

  def index
    if current_user&.is_admin? && params[:id].blank?
      status = params[:status]
      @comments = status.present? && status != :all ? Comment.where(status: status) : Comment.all
      @comments = @comments.order(id: :desc)
      render :index and return
    end
    handle_unauthorized and return if params[:id].blank?
    page = params[:page].presence || 1
    per_page = 11

    offset = (page.to_i - 1) * (per_page - 1)
    @comments = Comment.where(confession_id: params[:id], status: :approved).order(id: :desc).limit(per_page).offset(offset)
    @has_next = @comments.length > 10
    @confession_id = params[:id].to_s
    @next_page = @has_next ? (page.to_i+1) : 0

    render partial: 'comments_section', locals: { comments: @comments, has_next: @has_next, next_page: @next_page, confession_id: @confession_id }
  end

  def like_dislike
    handle_unauthorized and return if params[:likes].blank? && params[:dislikes].blank?
    handle_unauthorized and return if params[:likes].present? && ![1, -1].include?(params[:likes])
    handle_unauthorized and return if params[:dislikes].present? && ![1, -1].include?(params[:dislikes])

    comment = Comment.find(params[:id])
    params[:likes] == 1 ? comment.likes += 1 : comment.likes -= 1 if params[:likes].present?
    params[:dislikes] == 1 ? comment.dislikes += 1 : comment.dislikes -= 1 if params[:dislikes].present?
    comment.save

    render json: { status: 'success', likes: comment.likes, dislikes: comment.dislikes }
  end

  def destroy
    comment = Comment.find(params[:id])
    render json: { message: "Comment not found"} and return if comment.blank?

    comment.destroy

    redirect_to comments_path
  end

  def approve
    comment = Comment.find(params[:id])
    render json: { message: "Comment not found"} and return if comment.blank?

    comment.status = params[:status].to_sym
    comment.save
    redirect_to '/comments'
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :confession_id)
  end
end
