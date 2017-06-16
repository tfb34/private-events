class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  
  def new
  end
  
  def index
  	@events = Event.all.collect
  end

  def create
      @event = current_user.events.build(event_params)
      if @event.save
        flash.now[:success] = "Successfully created new event."
        redirect_to @event
      else
        flash.now[:error] = @event.errors.full_messages
        render 'events/new'
      end
  end

  def show
  	@event = Event.find_by(id: params[:id])
  end
    
  private 

  def event_params
    params.require(:event).permit(:name, :place, :date)
  end

  def logged_in_user
    unless logged_in?
      flash.now[:error]= "You are not logged_in."
      redirect_to request.referrer
    end
  end

end
