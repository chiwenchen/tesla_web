class Admin::ProductsController < AdminController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to admin_root_path
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    if @product.update(product_params)
      redirect_to admin_root_path
    else
      flash[:notice] = @product.errors
      render 'edit'
    end
  end

  private

  def product_params
    # params.require(:product).permit(:username, :password, :password_confirmation, :email, :owner_id, :sales_id, :tech_id, :staff_number, :customer_number)
    params.require(:product).permit!
  end
end
