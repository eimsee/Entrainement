class MoviesController < ApplicationController

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def edit
    @movie = Movie.find(params[:id])
  end
end
