class PollsController < ApplicationController
  def new
    @poll = Poll.new
  end

  def edit
    @poll = Poll.find(params[:id])
  end

  def show
    @poll = Poll.find(params[:id])
  end

end
