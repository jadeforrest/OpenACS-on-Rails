class RlResource < ActiveRecord::Base
  validates_numericality_of :resource_number, :allow_nil => true, :only_integer => true
  validates_length_of :approved_p, :allow_nil => true, :maximum => 1

  def self.resources_count
    Rails.cache.fetch("resource_list_cache") {RlResource.count }
  end

end
