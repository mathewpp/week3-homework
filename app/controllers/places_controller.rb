class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

 def create
 	Place.create(title: params["title"], 
 				 photo_url: params["photo_url"], 
			 	 admission_price: params["admission_price"], 
			 	 description: params["description"])
    redirect_to root_url
 end

 def delete
 	Place.delete(params["id"])
    redirect_to root_url
 end

 def edit
 	@place = Place.find_by(:id => params["id"])
    render "new"
 end

 def update
 	Place.update(title: params["title"], 
 				 photo_url: params["photo_url"], 
			 	 admission_price: params["admission_price"], 
			 	 description: params["description"])
    redirect_to root_url
 end

 def show
    @place = Place.find_by(:id => params["id"])
 end

end
