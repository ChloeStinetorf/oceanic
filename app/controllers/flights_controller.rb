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





end
