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
end
