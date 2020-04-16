class OrdersController < ApplicationController
 def index
   @item = Item.find(params[:item_id])

	@orders = Order.all
 end
def show
	@item = Item.find(params[:item_id])
    @order = @item.orders.find(params[:id])
	end
def create
    @item = Item.find(params[:item_id])
    @order = @item.orders.create(order_params)
    redirect_to item_path(@item)
  end
 def destroy
    @item = Item.find(params[:item_id])
    @order = @item.orders.find(params[:id])
    @order.destroy
    redirect_to item_path(@item)
  end

  private
   
    def order_params
      params.require(:order).permit(:name, :address, :number)
    end
end
