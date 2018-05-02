class Admin::CategoriesController < AdminController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to admin_root_path
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    if @category.update(category_params)
      redirect_to admin_root_path
    else
      flash[:notice] = @category.errors
      render 'edit'
    end
  end

  private

  def category_params
    # params.require(:product).permit(:username, :password, :password_confirmation, :email, :owner_id, :sales_id, :tech_id, :staff_number, :customer_number)
    params.require(:category).permit!
  end
end
