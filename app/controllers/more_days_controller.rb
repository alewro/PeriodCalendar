class MoreDaysController < ApplicationController
  before_action :set_more_day, only: %i[ show edit update destroy ]

  # GET /more_days or /more_days.json
  def index
    @more_days = MoreDay.all
  end

  # GET /more_days/1 or /more_days/1.json
  def show
  end

  # GET /more_days/new
  def new
    @more_day = MoreDay.new
  end

  # GET /more_days/1/edit
  def edit
  end

  # POST /more_days or /more_days.json
  def create
    @more_day = MoreDay.new(more_day_params)

    respond_to do |format|
      if @more_day.save
        format.html {redirect_to root_path}
        format.json { render :show, status: :created, location: @more_day }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @more_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /more_days/1 or /more_days/1.json
  def update
    respond_to do |format|
      if @more_day.update(more_day_params)
        format.html { redirect_to more_day_url(@more_day), notice: "More day was successfully updated." }
        format.json { render :show, status: :ok, location: @more_day }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @more_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /more_days/1 or /more_days/1.json
  def destroy
    @more_day.destroy

    respond_to do |format|
      format.html { redirect_to show_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_more_day
      @more_day = MoreDay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def more_day_params
      params.require(:more_day).permit(:name, :start_time, :end_time)
    end
end
