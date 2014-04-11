Prime::Styles.define :posts do
  style :index do

    style :foot, container: {
      size_to_fit: true,
      top: 500,
      height: 100
      # width: 320,
      # height: 100,
      # bottom: 0
    } do
      style :image,
        top: 500,
        bottom: 0#,
        # width: 320,
        # height: 200

      style :text,
        # size_to_fit: true,
        font_size: 64,
        height: 30,
        top: 64,
        text_color: :white
        # bottom: 0
    end
    # style :head, container: {
    #   background_color: :black,
    #     # top: -150,
    #     left: 0,
    #     top: 0,
    #     height: 150,
    #     width: 320
    #     } do end

    # style :head do
    #   style :image,
    #     top: 0,
    #     height: 350,
    #     width: 320
    # end

    # style :screen_label_one,
    #   text_color: 0xB8002E.uicolor,
    #   font_size: 30,
    #   text_alignment: :right,
    #   height: 300,
    #   width: 300

    style :table,
      top: 240#,
      # bottom: 68
    #   separator_inset: UIEdgeInsetsZero
      # automaticallyAdjustsScrollViewInsets: false
    style :cell,
      background_color: :yellow

    style :cell_title,
      # text_color: :app_base,
      left: 20,
      top: 10,
      width: 280,
      font: :app_base.uifont(16),
      size_to_fit: true
  end

  style :show do
    style :title,
      top: 120,
      left: 0,
      right: 0,
      text_alignment: :center
  end

  style :photos do
    style :table, container: { background_color: :clear } do
      style :cell, container: { height: 200 } do
        style :image,
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          content_mode: UIViewContentModeScaleAspectFill
      end
    end
  end

end
