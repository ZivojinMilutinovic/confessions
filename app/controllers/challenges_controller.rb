class ChallengesController < ApplicationController
  before_action :authorize_admin!, only: [:new, :create, :mark_complete]

  def new
    @challenge = Challenge.new
  end

  def index
    @challenges = Challenge.order(id: :desc).all
  end

  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      redirect_to challenges_path, notice: 'Challenge was successfully created.'
    else
      render :new
    end
  end

  def destroy
    challenge = Challenge.find(params[:id])
    render json: { message: "Challenge not found"} and return if challenge.blank?

    challenge.destroy

    redirect_to challenges_path
  end

  def participate
    @challenge = Challenge.find(params[:id])
    render json: { message: "Challenge not found"} and return if @challenge.blank?
  end

  def mark_complete
    @challenge = Challenge.find(params[:id])
    render json: { message: "Challenge not found"} and return if @challenge.blank?

    @challenge.status = 1
    @challenge.save
  end

  private

  def challenge_params
    params.require(:challenge).permit(:title, :description, :duration, :start_date, :end_date)
  end
end
