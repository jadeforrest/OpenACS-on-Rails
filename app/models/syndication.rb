class Syndication < ActiveRecord::Base
  validates_presence_of :last_updated
end
