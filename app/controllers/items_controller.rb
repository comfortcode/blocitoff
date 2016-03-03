class ItemsController < ApplicationController

  def new
     @item = Item.new
  end 
  
  def create
    @user = current_user
    @item = Item.new(params.require(:item).permit(:name))
    @item.user = @user
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