class ItemsController < ApplicationController

  def new
     @item = Item.new
  end 
  
  def create
    @item = current_user.items.new(params.require(:item).permit(:name))

     if @item.save
       flash[:notice] = "Your new item was saved!"
     else
       flash[:error] = "There was an error saving the item. Please try again!"
     end
     redirect_to users_show_path
  end

 def destroy
     @item = Item.find(params[:id])
     @item.destroy
 end


end