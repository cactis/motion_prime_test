class ProductsScreen < ApplicationScreen
  title "Products"

  # open_screen "products#index"
  def index
    set_title "Products"
    set_navigation_right_button 'New' do
      open_screen "products#new"
    end
    set_section :products_index_table
  end

  # open_screen "products#show"
  def show
    @model = params[:model]
    set_title "Show Product"
    set_navigation_back_button 'Back'
    set_navigation_right_button 'Edit' do
      open_screen "products#edit", params: { model: @model }
    end
    set_section :products_show, model: @model
  end

  # open_screen "products#edit"
  def edit
    @model = params[:model]
    set_title "Edit Product"
    set_navigation_back_button 'Cancel'
    set_section :products_form, model: @model
  end

  # open_screen "products#new"
  def new
    @model = Product.new
    set_title "New Product"
    set_navigation_back_button 'Cancel'
    set_section :products_form, model: @model
  end

  def on_return
    if action?(:index) || action?(:show)
      refresh
    end
  end
end