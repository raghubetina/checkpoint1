require 'open-uri'

class PostsController < ApplicationController
  def index
    # This will expire every hour or so. You'll have to get a new one from the Graph API explorer.
    my_access_token = ""
    
    url = "https://graph.facebook.com/me/home?access_token=#{my_access_token}&limit=200"
    
    response = open(url).read

  end
end