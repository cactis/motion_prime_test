class PostsPhotosTableSection < Prime::TableSection

  def table_data
    puts __method__
    model.post_photos.all.map do |photo|
      PostsPhotosCellSection.new(model: photo)
    end
  end

end
