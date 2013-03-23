class FlightsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create]

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
    @flight = Flight.find(params[:id])
  end

  def purchase
    seats = params[:ids]
    seats.each do |seat|
      s = Seat.find(seat.to_i)
      s.is_taken = true
      s.save
      @auth.seats << s
    end
    @flight = Flight.find(params[:fid])
  end

  def search
    @flights = Flight.all
  end

  def destinations
    flight = Flight.find(params[:origin])
    @destinations = Flight.where(origin:flight.origin)
    @origin = flight
  end

  def search_flights
    origin = params[:origin]
    destination = Flight.find(params[:destination]).destination
    @flights = Flight.where(origin:origin, destination:destination)
  end


end
