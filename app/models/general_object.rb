class GeneralObject < ActiveRecord::Base
  validates_presence_of :on_which_table
  validates_length_of :on_which_table, :allow_nil => false, :maximum => 30
end
