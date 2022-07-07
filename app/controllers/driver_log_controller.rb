class DriverLogController < ApplicationController
  before_action :find_driver

  def index
    @events = @driver.events
  end

  def edit
    @event = @driver.events.find(params[:id])
  end

  def update
    @event = @driver.events.find(params[:id])
    if @event.update(event_params)
      redirect_to driver_logs_path(@driver), notice: "Information Logged."
    else
      render :edit
    end
  end

  private

  def find_driver
    @driver = Driver.find(params[:driver_id])
  end

  def event_params
    params.require(:event).permit(:pickup, :dropoff, :milage_out, :milage_return, :driver_comment)
  end
end
