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

  def create
    #byebug
    @movie = Movie.create!(params[:movie])
    # flash is a kind of hash that persists from the current request to the next.
    # flash[:notice] for information and flash[:warning] for when things are going wrong.
    flash[:notice] = "#{@movie.title} was successfully created."
    
    # Project 4.2 - Instead of redirecting the the Index action, redirect to the show
    # action of the movie just created.
    #redirect_to movies_path
    redirect_to movie_path(@movie)

  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    flash[:notice] = "Movie #{@movie.title} was deleted forever."
    redirect_to movies_path
  end

end

