class AppDelegate < Prime::BaseAppDelegate


  def on_load(app, options)
    # Reader.delete_all

    setup_navigation_styles
    # open_screen 'tasks#index', sidebar: true
    open_screen 'posts#index', sidebar: true
    open_screen 'readers#show', params: {model: Reader.seeds!}, sidebar: true
    # CYAlert.show
  end

  def setup_navigation_styles
    settings = {
      UITextAttributeFont =>  :app_base.uifont(17),
      UITextAttributeTextColor =>  :app_base.uicolor
    }
    bar_appearance = UINavigationBar.appearance

    bar_appearance.barTintColor = :app_nav_bg.uicolor
    bar_appearance.setTitleTextAttributes(settings)
    bar_item_appearance = UIBarButtonItem.appearance
    bar_item_appearance.setTitleTextAttributes settings, forState: UIControlStateNormal
  end
end
