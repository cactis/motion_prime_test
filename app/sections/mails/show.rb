class MailsShowSection < Prime::Section
  element :title, text: proc { model.title }
end