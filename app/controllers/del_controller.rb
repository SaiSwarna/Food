class DelController < ApplicationController
http_basic_authenticate_with name: "root", password: "root"

	def index
		@items = Item.all
	end
	def show
		@item = Item.find(params[:id])
	end
	def new
		@item = Item.new
	end
	def edit
		@item = Item.find(params[:id])
	end
	def update
		@item = Item.find(params[:id])
 		if @item.update(item_params)
		    redirect_to @item
 		else
 		   render 'edit'
 		end
	end
	def create
		@item = Item.new(item_params)
		if @item.save 
			redirect_to items_path #redirect_to @item
		else
			render 'new'
		end
	end
def destroy
  @item = Item.find(params[:id])
  @item.destroy
 
  redirect_to items_path
end

private
	def item_params
		params.require(:item).permit(:title,:text1,:text2,:text3)
	end
end
