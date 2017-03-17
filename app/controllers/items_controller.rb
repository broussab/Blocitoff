class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = 'Item was saved.'
      redirect_to root_path
    else
      flash.now[:alert] = 'There was an error saving the post. Please try again.'
      redirect_to root_path
       end
     end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" has been successfully completed!"
      redirect_to root_path
    else
      flash.now[:alert] = 'There was an error removing the item.'
      render root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
