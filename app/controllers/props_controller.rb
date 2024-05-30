class PropsController < ApplicationController
  def search
    if params[:query].present?
      @props = Prop.where(
        "name ILIKE :query OR description ILIKE :query OR category ILIKE :query",
        query: "%#{params[:query]}%"
      )
    else
      @props = Prop.all
    end
  end

  def home
    @props = Prop.all
  end

  def index
    @props = Prop.all
  end

  def my_index
    @props = Prop.where(user: current_user)
  end

  def show
    @prop = Prop.find(params[:id])
    @booking = Booking.new
  end

  def new
    @prop = Prop.new
  end

  def create
    @prop = Prop.new(prop_params)
    @prop.user = current_user
    if @prop.save
      redirect_to prop_path(@prop)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def prop_params
    params.require(:prop).permit(:name, :price, :description, :category)
  end
end
