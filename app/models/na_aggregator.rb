class NaAggregator < ActiveRecord::Base
  validates_presence_of :aggregator_name
  validates_length_of :aggregator_name, :allow_nil => false, :maximum => 100
  validates_inclusion_of :public_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_numericality_of :number_shown, :allow_nil => true, :only_integer => true
  validates_numericality_of :aggregator_bottom, :allow_nil => true, :only_integer => true
end
