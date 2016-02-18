# This file is app/controllers/movies_controller.rb

class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    id = params[:id] # Retrive movie ID from URI route
    @movie = Movie.find(id) # Lookup movie by unique ID
    # Will render app/views/movies/show.html.haml by defaylt
    
    #Debugging exemples
    #raise params.inspect
    #logger.debug(@movie.title)
    #byebug
  end

  def new
    # default: render 'new' view template
  end

end

