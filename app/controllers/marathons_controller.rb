class MarathonsController < ApplicationController
  before_action :set_marathon, only: [:show, :edit, :update, :destroy]

  # GET /marathons
  # GET /marathons.json
  def index
    @marathons = Marathon.all
  end

  # GET /marathons/1
  # GET /marathons/1.json
  def show
  end

  # GET /marathons/new
  def new
    @marathon = Marathon.new
  end

  # GET /marathons/1/edit
  def edit
  end

  # POST /marathons
  # POST /marathons.json
  def create
    @marathon = Marathon.new(marathon_params)

    respond_to do |format|
      if @marathon.save
        flash[:success] = "#{@marathon.name} was successfully created."
        format.html { redirect_to marathons_url}
        format.json { render :show, status: :created, location: @marathon }
      else
        format.html { render :new }
        format.json { render json: @marathon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marathons/1
  # PATCH/PUT /marathons/1.json
  def update
    respond_to do |format|
      if @marathon.update(marathon_params)

        flash[:success] = "#{@marathon.name} was successfully updated."
        format.html { redirect_to @marathon}
        format.json { render :show, status: :ok, location: @marathon }
      else
        format.html { render :edit }
        format.json { render json: @marathon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marathons/1
  # DELETE /marathons/1.json
  def destroy
    @marathon.destroy
    respond_to do |format|
      flash[:alert] = '#{@marathon.name} was successfully destroyed.'
      format.html { redirect_to marathons_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marathon
      @marathon = Marathon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marathon_params
      params.require(:marathon).permit(:name, :description, :event_date, :city, :state, :country, :registration_url, :website_url, :logo, :image, :map)
    end
end
