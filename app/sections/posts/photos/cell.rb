class PostsPhotosCellSection < ApplicationSection

  add_sliding_action_button :finish, title: '刪除', action: :on_delete
  element :image, type: :image, image: proc { model.image }, as: :view
end
