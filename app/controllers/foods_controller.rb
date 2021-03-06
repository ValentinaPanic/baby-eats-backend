class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :update, :destroy]

  # GET /foods
  def index
    @foods = Food.all

    render json: FoodsSerializer.new(@foods)
  end
  # GET /foods/1
  def show
    render json: FoodsSerializer.new(@food)
  end

  # POST /foods
  # def create
  #   @food = Food.new(food_params)
  #   byebug
  #   if @food.save
  #     render json: FoodsSerializer.new(@food), status: :created
  #   else
  #     render json: @food.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /foods/1
  def update
    if @food.update(food_params)
      render json: FoodsSerializer.new(@food)
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
    render json: {message: "Delete was successful"}
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_params
      params.require(:food).permit(:name, :meal_type, :day_id)
    end
end
