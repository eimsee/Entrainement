class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
  end

  def edit
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.save!
    redirect_to list_path(@list)
  end

  def new
    @list = List.new
  end

  def destroy
    @list.destroy
    # redirect_to lists_path, status: :see_other
  end

  def update
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end

end
