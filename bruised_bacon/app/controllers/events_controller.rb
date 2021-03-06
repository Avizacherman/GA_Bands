class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @venue_id = params[:venue_id]

  end

  def create
    Event.create(event_params)
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    redirect_to events_path
  end

  def delete
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path
  end

  def search
    year = params[:date]["date(1i)"]
    month = params[:date]["date(2i)"]
    day = params[:date]["date(3i)"]
    @results = Event.search(year, month, day)
    render :results
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :alcohol_served, :venue_id, :band_id)
  end


end
