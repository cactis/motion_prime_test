# encoding: utf-8

class PostsIndexCellSection < ApplicationSection

  add_sliding_action_button :finish, title: '刪除', action: :on_delete

  container height: 40
  element :title, text: proc { model.title }
end
