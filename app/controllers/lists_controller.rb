class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id]) # will find the list depending on the given ID
  end

  def create
    @list = List.new(list_params)
    @list.save
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
