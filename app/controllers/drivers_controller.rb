class DriversController < ApplicationController
  before_action :set_driver, only: %i[ show edit update destroy ]

  # GET /drivers or /drivers.json
  def index
    @drivers = Driver.all
  end

  # GET /drivers/1 or /drivers/1.json
  def show
  end

  # GET /drivers/new
  def new
    @driver = Driver.new
  end

  # GET /drivers/1/edit
  def edit
  end

  # POST /drivers or /drivers.json
  def create
    @driver = Driver.new(driver_params)

    respond_to do |format|
      if @driver.save
        format.html { redirect_to driver_url(@driver), notice: "Driver was successfully created." }
        format.json { render :show, status: :created, location: @driver }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drivers/1 or /drivers/1.json
  def update
    respond_to do |format|
      if @driver.update(driver_params)
        format.html { redirect_to driver_url(@driver), notice: "Driver was successfully updated." }
        format.json { render :show, status: :ok, location: @driver }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drivers/1 or /drivers/1.json
  def destroy
    @driver.destroy

    respond_to do |format|
      format.html { redirect_to drivers_url, notice: "Driver was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def driver_params
      params.fetch(:driver, {})
    end
end
