class SidebarScreen < Prime::Screen
  section :sidebar_table

  def open_home
    app_delegate.open_screen :home
  end

  def open_mails
    ap __method__
    app_delegate.open_screen 'mails#send'
  end

  def open_posts
    app_delegate.open_screen 'posts#index'
  end

  def open_tasks
    app_delegate.open_screen 'tasks#index'
  end

  def open_basic_form
    app_delegate.open_screen :basic_form
  end

  def open_columns
    app_delegate.open_screen :columns
  end

  def open_icons
    app_delegate.open_screen :icons
  end
end
