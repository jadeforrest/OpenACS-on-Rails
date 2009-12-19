class SiteNodesSelection < ActiveRecord::Base
  validates_inclusion_of :view_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
