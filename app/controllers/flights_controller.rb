class FlightsController < ApplicationController

def index
  @flights = Flight.all
end


def new
  @flight = Flight.new
  @planes = Plane.all
  end


def create
  @flight = Flight.create(params[:flight])
  @flight.plane = Plane.find(params[:plane])
  @flight.save
  @flights = Flight.all
end

def show
end





end
