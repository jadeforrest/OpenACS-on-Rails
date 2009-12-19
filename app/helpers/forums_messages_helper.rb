module ForumsMessagesHelper

  def full_name(first_names, last_name)
    Person.full_name_formatter(first_names, last_name)
  end

  # hack around form_for inability to recognize path
  def forums_messages_path
    messages_path
  end

end
