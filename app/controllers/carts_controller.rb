class CartsController < ApplicationController
  def add_item_to_cart
    return if params[:variant_id].nil?
    variant = Variant.find params[:variant_id]
    cart = current_user.shopping_cart
    cart_item = CartItem.create(
      user: current_user,
      variant: variant,
      product: variant.product,
    )
  end

  def remove_item_from_cart
    return if params[:variant_id].nil?
  end
end
