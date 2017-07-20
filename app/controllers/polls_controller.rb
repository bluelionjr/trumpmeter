class PollsController < ApplicationController
  before_action :authorize_user, except: [:new, :create]

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(poll_params)
    @poll.user = current_user


    if @poll.save
      flash[:notice] = "Your vote was saved!"
      redirect_to @poll
    else
      flash.now[:alert] = "There was a problem saving your vote.  Please try again."
      render :new
    end
  end

  def edit
    @poll = Poll.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])
    @poll.assign_attributes(poll_params)

    if @poll.save
      flash[:notice] = "Your vote was updated."
      redirect_to @poll
    else
      flash.now[:alert] = "There was an error saving your vote. Please try again."
      render :edit
    end
  end

  def show
    @poll = Poll.find(params[:id])
  end

  private

  def poll_params
    params.permit(:vote)
  end

  def authorize_user
    poll = Poll.find(params[:id])

    unless current_user == poll.user
      flash[:alert] = "Oops.  You can't do that.  Have a look at our home page."
      redirect_to welcome_index_path
    end
  end

end
