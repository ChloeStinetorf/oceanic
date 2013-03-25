class PlanesController < ApplicationController

def index
  @planes = Plane.order(:name)
end

def new
  @plane = Plane.new
end

def create
  @plane = Plane.create(params[:plane])
  @planes = Plane.order(:name)
end

end
