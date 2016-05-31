class StartupsController < ApplicationController

  def index
    @startups = Startup.all
  end 

  def new
    @startup = Startup.new
  end 

  def create
    @startup = Startup.create startup_params
    @startup.save!
    render "show"
  end 

  def update
    @startup = Startup.update startup_params
  end 

  def show
    @startup = Startup.find params[:id]
  end 

  private

  def startup_params
    params.require(:startup).permit(:name, :description, :approved, :id)
  end 

end 