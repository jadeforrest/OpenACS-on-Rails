class WfContextTaskPanel < ActiveRecord::Base
  validates_presence_of :context_key
  validates_length_of :context_key, :allow_nil => false, :maximum => 100
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_presence_of :transition_key
  validates_length_of :transition_key, :allow_nil => false, :maximum => 100
  validates_presence_of :sort_order
  validates_numericality_of :sort_order, :allow_nil => false, :only_integer => true
  validates_presence_of :header
  validates_length_of :header, :allow_nil => false, :maximum => 200
  validates_presence_of :template_url
  validates_length_of :template_url, :allow_nil => false, :maximum => 500
  validates_length_of :overrides_action_p, :allow_nil => true, :maximum => 1
  validates_length_of :only_display_when_started_p, :allow_nil => true, :maximum => 1
end
