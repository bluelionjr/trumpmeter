class PollsController < ApplicationController

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new
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

  def show
    @poll = Poll.find(params[:id])
  end

end
