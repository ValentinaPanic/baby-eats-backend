class DaysController < ApplicationController
  before_action :set_day, only: [:show, :update, :destroy]

  # GET /days
  def index
    if logged_in?
    @days = current_user.days
    render json: DaySerializer.new(@days)
  else
    render json: {
      error: "You must be logged in to see the meals"
    }
  end
    
     
  end

  # GET /days/1
  def show
    render json: DaySerializer.new(@day)
  end

  # POST /days
  def create
    
    @day = Day.new(day_params)
 
    if @day.save
      @food = Food.find_or_create_by(name: params[:day][:foods][:name], meal_type: params[:day][:foods][:meal_type])
      @day.foods << @food
    
      render json: DaySerializer.new(@day), status: :created
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /days/1
  def update
    if @day.update(day_params)
      render json:DaySerializer.new(@day)
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /days/1
  def destroy
    @day.destroy
    render json: {message: "Delete was successful"}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def day_params
      params.require(:day).permit(:date, :user_id, food_ids: [])
    end
end
