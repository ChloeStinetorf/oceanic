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

end
