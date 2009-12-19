class DownloadDownload < ActiveRecord::Base
  validates_presence_of :download_date
  validates_length_of :download_hostname, :allow_nil => true, :maximum => 400
  validates_length_of :download_ip, :allow_nil => true, :maximum => 20
  validates_length_of :user_agent, :allow_nil => true, :maximum => 200
end
