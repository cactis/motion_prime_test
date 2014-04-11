class PostsScreen < ApplicationScreen
  title "Posts"

  def index
    set_title "Posts"
    set_navigation_right_button 'New' do
      open_screen "posts#new"
    end

    set_sections_wrapper false
    set_section :posts_index_head
    # set_section :posts_index_foot
    set_section :posts_index_table

    # image_view background_image: 'backgrounds/640x1000.jpg'
    # label text: 'Hello World', styles: :posts_index_screen_label_one
    # setup view, background_image: 'backgrounds/640x1000.jpg'
  end

  def photos
    @model = params[:model]
    set_title "Photos"
    set_navigation_back_button 'Back'
    set_navigation_right_button 'Camera!' do
      BW::Device::Camera.any.picture(media_types: [:image]) do |result|
        if img = result[:original_image]
          @model.post_photos.new(image: img)
          @model.save
          refresh
        end
      end
    end
    set_section :posts_photos_table, model: @model
  end

  def show
    @model = params[:model]
    set_title "Show Post"
    set_navigation_back_button 'Back'
    set_navigation_right_button 'Edit', title_color: :app_nav do
      open_screen "posts#edit", params: { model: @model }
    end
    set_section :posts_show, model: @model
  end

  # open_screen "posts#edit"
  def edit
    @model = params[:model]
    set_title "Edit Post"
    set_navigation_back_button 'Cancel'
    set_navigation_right_button 'Photos' do
      open_screen 'posts#photos', params: { model: @model }
    end
    set_section :posts_form, model: @model
  end

  # open_screen "posts#new"
  def new
    @model = Post.new
    set_title "New Post"
    set_navigation_back_button 'Cancel'
    set_section :posts_form, model: @model
  end

  def on_return
    if action?(:index) || action?(:show)
    #   all_sections.each do |section|
    #     section.try(:reload)
    #   end
      refresh
    end
  end
end
