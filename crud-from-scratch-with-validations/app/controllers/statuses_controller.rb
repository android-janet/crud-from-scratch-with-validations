class StatusesController < ApplicationController
  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.create
    if status.save
      redirect_to statuses_path
    else
      render 'new'
    end
  end

end
