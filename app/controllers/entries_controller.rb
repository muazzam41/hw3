class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @contact["place_id"]})
  end

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    @entry = Entry.new

    @entry["Title"] = params["Title"]
    @entry["Description"] = params["Description"]
    @entry["Date"] = params["Date"]

    @entry["place_id"] = params["place_id"]

    @entry.save

    redirect_to "/places/#{@entry["place_id"]}"
  end
  
end
