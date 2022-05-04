class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/index.html.erb"})
  end

  def details
    @this_movie = Movie.where({ :id => params.fetch("movie_id") }).at(0)
    render({ :template => "movie_templates/details.html.erb"})
  end

end
