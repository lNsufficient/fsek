# encoding:UTF-8
class CafeWorksController < ApplicationController
  
    before_filter :login_required, only: [:kalender,:new,:show,:edit,:create,:update,:destroy]
    before_filter :authenticate_user!, only: [:calendar,:new,:show,:edit,:create,:update,:destroy]
    before_filter :authenticate_editor_events!, only: [:new,:edit,:index]
    before_action :utskott, only: [:new,:edit]
        
  # GET /events
  # GET /events.json
  def index
    @events = CafeWork.all    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = CafeWork.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event }
    end
  end
  def calendar
    
  end
  def export
        @events = CafeWork.all        
        @calendar=Icalendar::Calendar.new 
        for event in CafeWork.all 
          @calendar.add_event(event.ical(polymorphic_url(event, :routing_type => :url))) 
        end
        @calendar.publish      
      respond_to do |format|
        format.ics
      end
  end
  # GET /events/new
  # GET /events/new.json
  def new
    @event = CafeWork.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = CafeWork.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = CafeWork.new(event_params)
    @event.update(author: current_user)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, :notice => 'Eventet skapades!.' }
        format.json { render :json => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = CafeWork.find(params[:id])
    
    respond_to do |format|
      if @event.update_attributes(event_params)
        format.html { redirect_to @event, :notice => 'Eventet uppdaterades!' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = CafeWork.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
  private
      def set_event
        @event = CafeWork.find(params[:id])
      end
      def event_params
        params.require(:event).permit(:title,:author,:description,:location,:starts_at,:ends_at,:all_day,:category,:image)
      end
      def utskott
        @utskott = List.where(:category => 'utskott').sort_by{|l| l.name}
      end
end
