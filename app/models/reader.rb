class Reader < Prime::Model
  timestamp_attributes
  attribute :title
  attribute :offset_y

  def self.seeds!
    # self.delete_all
    content = dummy
    if book = self.first
      ap 'found it'
      book
    else
      book = self.create(title: content, offset_y: 0)
      ap 'new record'
    end
    ap [book.offset_y, 'book.offset_y', __method__]
    return book
  end

  def offset_y
    self[:offset_y] ||= 0
  end

  def self.dummy
    path = "#{App.resources_path}/Toy Story 2 (HDRip-XviD)(Dual AC3 5.1)(Proteinicos)by wimi.eng.srt.ml"
    ap [path, 'path', __method__]
    File.open(path, 'rb') do |file|
      return file.read
    end
  end
end
