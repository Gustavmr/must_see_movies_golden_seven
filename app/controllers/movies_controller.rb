class MoviesController < ApplicationController

#Show lists
  def show_directors
    @list = Director.all
    @type = "Directors"
    render("show.html.erb")
  end

  def show_actors
    @list = Actor.all
    @type = "Actors"
    render("show.html.erb")
  end

  def show_movies
    @list = Movie.all
    render("show_movies.html.erb")
  end

#Show details
  def directors_detail
    @id = params[:id]
    @current = Director.find(@id)
    @type = "directors"
    render("detail.html.erb")
  end

  def actors_detail
    @id = params[:id]
    @current = Actor.find(@id)
    @type = "actors"
    render("detail.html.erb")
  end

  def detail_movies
    @id = params[:id]
    @current = Movie.find(@id)
    render("detail_movies.html.erb")
  end

# Delete records
  def delete_dir
    @id = params[:id]
    i = Director.find(@id)
    i.delete
    redirect_to("http://localhost:3000/directors")
  end

  def delete_act
    @id = params[:id]
    i = Actor.find(@id)
    i.delete
    redirect_to("http://localhost:3000/actors")
  end

  def delete_mov
    @id = params[:id]
    i = Movie.find(@id)
    i.delete
    redirect_to("http://localhost:3000/movies")
  end

#Create new entries
  def   new_dir
  end

  def   new_act
  end

  def create_row
    @type = "directors"
    i = Director.new
    i.name = params[:name]
    i.bio = params[:bio]
    i.image_url = params[:image_url]
    i.dob = params[:dob]
    i.save
    redirect_to("http://localhost:3000/directors")
  end

  def create_row_act
    i = Actor.new
    i.name = params[:name]
    i.bio = params[:bio]
    i.image_url = params[:image_url]
    i.dob = params[:dob]
    i.save
    redirect_to("http://localhost:3000/actors")
  end

  def   new_mov
  end

  def create_row_mov
    i = Movie.new
    i.title = params[:title]
    i.description = params[:description]
    i.image_url = params[:image_url]
    i.year = params[:year]
    i.duration = params[:duration]
    i.save
    redirect_to("http://localhost:3000/movies")
  end

# Edit entries
  #Directors
  def edit_dir
    @id = params[:id]
    @current = Director.find(@id)
  end

  def update_dir
    @id = params[:id]
    i = Director.find(@id)
    i.name = params[:name]
    i.bio = params[:bio]
    i.image_url = params[:image_url]
    i.dob = params[:dob]
    i.save
    redirect_to("http://localhost:3000/directors")
  end

  #Actors
  def edit_act
    @id = params[:id]
    @current = Actor.find(@id)
  end

  def update_act
    @id = params[:id]
    i = Actor.find(@id)
    i.name = params[:name]
    i.bio = params[:bio]
    i.image_url = params[:image_url]
    i.dob = params[:dob]
    i.save
    redirect_to("http://localhost:3000/actors")
  end

    #Movies
  def edit_mov
    @id = params[:id]
    @current = Movie.find(@id)
  end

  def update_mov
    @id = params[:id]
    i = Movie.find(@id)
    i.title = params[:title]
    i.description = params[:description]
    i.image_url = params[:image_url]
    i.year = params[:year]
    i.duration = params[:duration]
    i.save
    redirect_to("http://localhost:3000/movies")
  end

end
