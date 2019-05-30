class OrdersController < ApplicationController
  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  def create
    shot = Shot.find(params[:shot_id])
    order  = Order.create!(shot_sku: shot.sku, amount: shot.price_cents, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end
