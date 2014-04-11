class PostsIndexFootSection < Prime::Section
  container height: 300
  element :image, type: :image, image: 'backgrounds/320x200.jpg'
  element :text, text: 'abcde'
  # section :posts_index_table ==> this not work too
end
