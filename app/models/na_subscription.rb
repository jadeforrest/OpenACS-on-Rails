class NaSubscription < ActiveRecord::Base
  validates_length_of :source_title, :allow_nil => true, :maximum => 100
  validates_inclusion_of :show_description_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
