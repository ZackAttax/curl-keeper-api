class DaysController < ApplicationController
  before_action :set_day, only: [:show, :update, :destroy]

  # GET /days
  def index
    @days = Day.all

    render json: @days, except: [:created_at, :updated_at, :user_id]
  end

  # GET /days/1
  def show
    render json: @day
  end

  # POST /days
  def create
    days = Day.all
    @day = Day.new(day_params)
    user = User.find_by_id(params[:day][:user_id])
    if @day.save
      render json: days, status: :created, location: @day, user: user
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /days/1
  def update
    if @day.update(day_params)
      render json: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /days/1
  def destroy
    @day.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def day_params
      params.require(:day).permit(:products, :process, :user_id, :rating, :wea)
    end
end
