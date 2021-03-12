class ListsController < ApplicationController
  before_action :set_list, only: [:show, :update, :destroy]

  # GET /lists
  def index
    if logged_in?
    @lists = current_user.lists
    render json: ListSerializer.new(@lists)
    else
      render json: {
        error: "You must be logged in to see the shopping list"
      }
  end
end

  # GET /lists/1
  def show
    render json: ListSerializer.new(@list)
  end

  # POST /lists
  def create
    #  byebug
    @list = current_user.lists.build(list_params)
    
    if @list.save
      render json:ListSerializer.new(@list), status: :created
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  def update
    if @list.update(list_params)
      render json: ListSerializer.new(@list)
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  def destroy
    @list.destroy
    render json: {message: "Delete was successful"}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def list_params
      params.require(:list).permit(:name, :user_id)
    end
end
