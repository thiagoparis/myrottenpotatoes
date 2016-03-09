# This file is app/controllers/movies_controller.rb

class MoviesController < ApplicationController

  def index
    #@movies = Movie.all.order(title: :asc)
    @movies = Movie.all.sort {|a,b| a.title <=> b.title}
  end

  def show
    id = params[:id] # Retrive movie ID from URI route
    @movie = Movie.find(id) # Lookup movie by unique ID

    # Will render the partial if it is a xhr (XmlHttpRequest - AJAX)
    #render(:partial => '/movies/movie_popup', :object => @movie) if request.xhr?

    if request.xhr?
      respond_to do |format|
        format.html { render(:partial => '/movies/movie_popup', :object => @movie) }
        format.json { render json: @movie }
      end
    end
    # Else will render app/views/movies/show.html.haml by defaylt
    
    #Debugging exemples
    #raise params.inspect
    #logger.debug(@movie.title)
    #byebug
  end

  def new
    # default: render 'new' view template
    @movie = Movie.new
  end

  def create
    #byebug

    #Replaced the create! method for new method in order to use validations
    #@movie = Movie.create!(params[:movie])

    @movie = Movie.new(params[:movie])
    if @movie.save
    
      # flash is a kind of hash that persists from the current request to the next.
      # flash[:notice] for information and flash[:warning] for when things are going wrong.
      flash[:notice] = "#{@movie.title} was successfully created."
    
      # Project 4.2 - Instead of redirecting the the Index action, redirect to the show
      # action of the movie just created.
      #redirect_to movies_path
      #redirect_to movie_path(@movie)

      redirect_to movies_path

    else
      render 'new'
    end

  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]

    # Replaced the update_attributes! method to update_attributes method in order to use validations.
    #@movie.update_attributes!(params[:movie]) 
    if @movie.update_attributes(params[:movie])
      flash[:notice] = "#{@movie.title} was successfully updated."
      redirect_to movie_path(@movie)
    else
      render 'edit'
    end

  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    flash[:notice] = "Movie #{@movie.title} was deleted forever."
    redirect_to movies_path
  end

end

