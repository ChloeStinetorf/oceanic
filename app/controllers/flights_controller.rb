class FlightsController < ApplicationController

  def index
    @flights = Flight.order(:date)
  end


  def new
    @flight = Flight.new
    @planes = Plane.all
  end


  def create
    @flight = Flight.create(params[:flight])
    @flight.plane = Plane.find(params[:plane])
    @flight.save
    @flight.create_seats
    @flights = Flight.order(:date)
  end

  def show
  end

  def search
    @flights = Flight.all
  end

  def destinations
    binding.pry
    flight = Flight.find(params[:origin])
    @destinations = Flight.where(origin:flight.origin)
  end



end
