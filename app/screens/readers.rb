class ReadersScreen < ApplicationScreen
  title "Readers"

  # open_screen "readers#index"
  def index
    set_title "Readers"
    set_navigation_right_button 'New' do
      open_screen "readers#new"
    end
    set_section :readers_index_table
  end

  # open_screen "readers#show"
  def show
    @model = params[:model]
    set_title "Show Reader"
    set_navigation_back_button 'Back'
    set_navigation_right_button 'Top' do
      main_section.view(:title).setContentOffset CGPointMake(0, -64), animated: true
    end
    set_section :readers_show, model: @model
  end

  # open_screen "readers#edit"
  def edit
    @model = params[:model]
    set_title "Edit Reader"
    set_navigation_back_button 'Cancel'
    set_section :readers_form, model: @model
  end

  # open_screen "readers#new"
  def new
    @model = Reader.new
    set_title "New Reader"
    set_navigation_back_button 'Cancel'
    set_section :readers_form, model: @model
  end

  def on_return
    if action?(:index) || action?(:show)
      refresh
    end
  end
end
