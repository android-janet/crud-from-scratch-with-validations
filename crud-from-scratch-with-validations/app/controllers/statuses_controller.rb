class StatusesController < ApplicationController
  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to status_path(@status)
    else
      render :new
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
    if @status.update(status_params)
      redirect_to status_path
    else
      render :update
    end
  end

  def edit
    @status = Status.find(params[:id])

  end

  def like
    @status = Status.find(params[:id])
    @status.likes.create
    redirect_to statuses_path
    
  end



  private
  def status_params
    params.require(:status).permit(:status, :user)
  end


end
