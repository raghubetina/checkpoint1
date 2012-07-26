require 'open-uri'

class PostsController < ApplicationController
  def index
    # This will expire every hour or so. You'll have to get a new one from the Graph API explorer.
    my_access_token = "AAACEdEose0cBAAplzSJNMIfEsdSGR3ZC43ytvZBngYo2DYyIq1gaPNmq5upBYj6phaVGAsjAKA0ZB85Lg9GG4LeVNuJDTsgDLSuzIUINwZDZD"
    
    url = "https://graph.facebook.com/me/home?access_token=#{my_access_token}&limit=200"
    
    response = open(url).read
    
    json_response = JSON.parse(response)
    
    @posts = json_response["data"]
    
    
  end
end