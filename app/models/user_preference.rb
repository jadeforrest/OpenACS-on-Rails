class UserPreference < ActiveRecord::Base
  validates_inclusion_of :prefer_text_only_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :language_preference, :allow_nil => true, :maximum => 2
  validates_inclusion_of :dont_spam_me_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :email_type, :allow_nil => true, :maximum => 64
  validates_length_of :locale, :allow_nil => true, :maximum => 30
  validates_length_of :timezone, :allow_nil => true, :maximum => 100
end
