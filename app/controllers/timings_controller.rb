class TimingsController < ApplicationController
  before_action :set_timing, only: [:show, :update, :destroy]

  # GET /timings
  # GET /timings.json
  def index
    @timings = Timing.all
  end

  # GET /timings/1
  # GET /timings/1.json
  def show
  end

  # POST /timings
  # POST /timings.json
  def create
    @timing = Timing.new(timing_params)

    if @timing.save
      render :show, status: :created, location: @timing
    else
      render json: @timing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timings/1
  # PATCH/PUT /timings/1.json
  def update
    if @timing.update(timing_params)
      render :show, status: :ok, location: @timing
    else
      render json: @timing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /timings/1
  # DELETE /timings/1.json
  def destroy
    @timing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timing
      @timing = Timing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timing_params
      params.require(:timing).permit(:target_id, :launch_time)
    end
end
