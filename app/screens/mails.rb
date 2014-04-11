class MailsScreen < ApplicationScreen
  title "Mails"

  # open_screen "mails#index"
  def index
    set_title "Mails"
    set_navigation_right_button 'New' do
      open_screen "mails#new"
    end
    set_section :mails_index_table
  end

  def send
    ap __method__
    set_title 'Send Mail'
    # set_navigation_right_button 'Mail' do
    #   mail = CLMail.new
    #   ap [mail, 'mail', __method__]
    #   mail.showEmail 'Icon.png'
    # end
    set_section :mails_send
  end

  # open_screen "mails#show"
  def show
    @model = params[:model]
    set_title "Show Mail"
    set_navigation_back_button 'Back'
    set_navigation_right_button 'Edit' do
      open_screen "mails#edit", params: { model: @model }
    end
    set_section :mails_show, model: @model
  end

  # open_screen "mails#edit"
  def edit
    @model = params[:model]
    set_title "Edit Mail"
    set_navigation_back_button 'Cancel'
    set_section :mails_form, model: @model
  end

  # open_screen "mails#new"
  def new
    @model = Mail.new
    set_title "New Mail"
    set_navigation_back_button 'Cancel'
    set_section :mails_form, model: @model
  end

  def on_return
    if action?(:index) || action?(:show)
      refresh
    end
  end
end
