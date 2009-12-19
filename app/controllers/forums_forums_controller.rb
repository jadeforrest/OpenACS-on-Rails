class ForumsForumsController < ApplicationController
  
  MAIN_FORUMS = 6691

  def index
    @forums = ForumsForum.find(:all, \
                               :conditions => \
                               { :enabled_p => "t", \
                                 :package_id => MAIN_FORUMS } )
  end
end
