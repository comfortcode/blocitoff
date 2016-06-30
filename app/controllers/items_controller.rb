class ItemsController < ApplicationController

  def index
    @items = current_user.items
    @new_item = Item.new
  end 

  def new
     @item = Item.new
  end 
  
  def create
    @item = current_user.items.new(params.require(:item).permit(:name, :file))

     if @item.save
       flash[:notice] = "Your new item was saved!"
     else
       flash[:error] = "There was an error saving the item. Please try again!"
     end
     redirect_to list_path
  end

 def destroy
     @item = Item.find(params[:id])
     @item.destroy
 end


end