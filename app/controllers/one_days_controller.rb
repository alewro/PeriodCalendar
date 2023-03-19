class OneDaysController < ApplicationController
  before_action :set_one_day, only: %i[ show edit update destroy ]

  # GET /one_days or /one_days.json
  def index
    @one_days = OneDay.all
  end

  # GET /one_days/1 or /one_days/1.json
  def show
  end

  # GET /one_days/new
  def new
    @one_day = OneDay.new
  end

  # GET /one_days/1/edit
  def edit
  end

  # POST /one_days or /one_days.json
  def create
    @one_day = OneDay.new(one_day_params)

    respond_to do |format|
      if @one_day.save
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @one_day }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @one_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /one_days/1 or /one_days/1.json
  def update
    respond_to do |format|
      if @one_day.update(one_day_params)
        format.html { redirect_to one_day_url(@one_day), notice: "One day was successfully updated." }
        format.json { render :show, status: :ok, location: @one_day }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @one_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_days/1 or /one_days/1.json
  def destroy
    @one_day.destroy

    respond_to do |format|
      format.html { redirect_to show_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one_day
      @one_day = OneDay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def one_day_params
      params.require(:one_day).permit(:name, :start_time)
    end
end
