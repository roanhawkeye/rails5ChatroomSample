class RoomsController < ApplicationController
  before_action :rooms

  def index
   
  end

  def show
    @messages = room.messages
  end

  def rooms
    @rooms ||= Room.all
  end

  def room 
    @room ||= Room.find(params[:id])
  end
end