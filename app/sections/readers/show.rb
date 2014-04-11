class ReadersShowSection < Prime::Section
  element :title, text: proc { model.title }, type: :text_view

  after_render :on_after_render

  def on_after_render
    @title = view(:title)
    @title.delegate = self

    @title.setEditable false
    @title.setPagingEnabled true
    # @title.textContainer.lineFragmentPadding = 0
    # @title.textContainerInset = UIEdgeInsetsMake(10, 10, 10, 10)
    # @title.setContentInset UIEdgeInsets.new(5, 5, 5, 5)
    # @title.contentSize = CGSizeMake(, CGFloat height)
    # @title.contentOffset = CGPointMake(0, model.offset_y)
    # @title.scrollRangeToVisible NSMakeRange(model.offset_y, 500)
    # ap [@title.frame, '@title.frame', __method__]
    # frame = @title.frame
    # frame.origin.y = model.offset_y
    # @title.scrollRectToVisible frame, animated: true
    # @title.scrollRectToVisible CGRectMake.new(0, 600, 0, 900), animated: true
    # @title.setContentOffset CGPointMake(0, model.offset_y), animated: true
    # @title.scrollRectToVisible CGRectMake(0, model.offset_y, 320, model.offset_y + 100), animated: true

    # -(void)viewWillAppear:(BOOL)animated{
    # CGRect frame=scrollView.frame;
    # frame.origin.x=self.offsetX;
    # [scrollView scrollRectToVisible:frame animated:NO];
    # }
    @title.setContentOffset CGPointMake(0, model.offset_y), animated: true
    ap [@title.contentOffset, '@title.contentOffset', __method__]
  end

  def on_appear
    ap __method__
  end

  def scrollViewDidScroll(scrollView)
    # ap [scrollView, 'scrollView', __method__]
    # ap [scrollView.contentOffset, 'scrollView.contentOffset', __method__]
  end

  def scrollViewDidEndDecelerating(scrollView)
    # ap [scrollView, 'scrollView', __method__]
    ap [scrollView.contentOffset, 'scrollView.contentOffset', __method__]
    model.offset_y = scrollView.contentOffset.y #- 64
    model.save
    ap [model.offset_y, 'model.offset_y', __method__]

  end
end
