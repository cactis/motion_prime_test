class PostsShowSection < Prime::Section
  element :title, text: proc { model.title }
end
