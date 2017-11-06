class ListItemsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @list = List.find(params[:list_id])
    @list_item = @list.list_items.create(list_item_params)
    redirect_to @list
  end

  def destroy
  end

  def update
  end

  def new
  end
end

private
def list_item_params
  params.require(:list_item).permit(:text, :expires, :details)
end
