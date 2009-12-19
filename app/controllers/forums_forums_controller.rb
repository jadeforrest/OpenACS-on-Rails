class ForumsForumsController < ApplicationController
  
  MAIN_FORUMS = 6691

  def index
    @forums = ForumsForum.find(:all, \
                               :order => 'thread_count desc', \
                               :conditions => \
                               { :enabled_p => "t", \
                                 :package_id => MAIN_FORUMS } )
  end
end
