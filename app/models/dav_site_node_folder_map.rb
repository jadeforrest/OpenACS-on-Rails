class DavSiteNodeFolderMap < ActiveRecord::Base
  validates_inclusion_of :enabled_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
