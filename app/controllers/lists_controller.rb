class ListsController < ApplicationController
  def new
    @list = current_user.lists.new
  end

  def create
    @list = current_user.lists.build
    puts params[:list][:is_public]
    @list.is_public = params[:list][:is_public] === "1" ? true : false
    @list.title = params[:list][:title]
    @list.save

    redirect_to user_path(current_user)
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
    @list = List.find(params[:id])
    @list_items = @list.list_items.all.order(expires: :asc)
  end
end
