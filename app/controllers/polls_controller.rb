class PollsController < ApplicationController

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new
    @poll.user = current_user
    @poll.vote = params[:vote]


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
    @poll.vote = params[:vote]

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

end
