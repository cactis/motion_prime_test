Prime::Styles.define :readers do
  style :index do
    style :cell_title,
      text_color: :app_base,
      left: 20,
      top: 10,
      width: 280,
      font: :app_base.uifont(16),
      height: 20
  end
  style :show do
    style :title,
      font: :app_base.uifont(16),
      top: 0,
      left: 0,
      right: 0,
      # height: proc { screen.view.height - 64 },
      bottom: 0,
      background_color: 0xFFF6DB
  end
end
