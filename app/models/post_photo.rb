class PostPhoto < Prime::Model
  attribute :image

  def image=(data)
    return unless data.present?
    self[:image] = data.nsdata
  end

  def image
    return unless self[:image].present?
    self[:image].uiimage
  end
end
