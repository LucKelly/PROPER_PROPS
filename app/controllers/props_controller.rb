class PropsController < ApplicationController
  def search
    if params[:query].present?
      @props = Prop.where("name LIKE ?", "%#{params[:query]}%")
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
    # change line 11 to the prop show path once it has been created!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def prop_params
    params.require(:prop).permit(:name, :price, :description, :category)
  end
end
