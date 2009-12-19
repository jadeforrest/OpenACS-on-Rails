class LangTranslateColumn < ActiveRecord::Base
  validates_length_of :on_which_table, :allow_nil => true, :maximum => 50
  validates_length_of :on_what_column, :allow_nil => true, :maximum => 50
  validates_inclusion_of :required_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :short_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
