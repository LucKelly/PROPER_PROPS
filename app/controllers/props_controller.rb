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

  def show
    @prop = Prop.find(params[:id])
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

  def edit
    @prop = Prop.find(params[:id])
  end

  def update
    @prop = Prop.find(params[:id])
    @prop.update(prop_params)
    redirect_to prop_path(@prop), notice: "Your prop was successfully updated.", status: :see_other
  end

  def destroy
    @prop = Prop.find(params[:id])
    @prop.destroy
    redirect_to props_path, notice: " Your prop was successfully deleted.", status: :see_other
  end

  private

  def prop_params
    params.require(:prop).permit(:name, :price, :description, :category)
  end
end
