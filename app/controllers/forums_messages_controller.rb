require "lib/integer_to_word.rb"
require "active_support"

class ForumsMessagesController < ApplicationController
  def index
    maybe_redirect 
    @messages = ForumsMessage.paginate(:per_page => 30, \
                                       :page => params['page'], \
                                       :select => 'subject, first_names, last_name, reply_count, last_child_post, forum_id, message_id' , \
                                       :order => 'last_child_post desc', \
                                       :joins => {:user => :person},
                                       :conditions => \
                                       { :forum_id => params[:forum_id], \
                                         :parent_id => nil } )
  end

  def show
    message = ForumsMessage.find(params['id'])
    tree_sortkey = message.tree_sortkey
    forum_id = message.forum_id

    @messages = ForumsMessage.find_by_sql(["select message_id, subject, content, format, p.first_names, p.last_name, posting_date, tree_level(tree_sortkey) as tree_level, state, m.user_id, parent_id, open_p, max_child_sortkey \
            from   forums_messages m, persons p \
            where  m.user_id = p.person_id \
            and    ( m.message_id = ? \ or 
                     ( forum_id = ? \
                       and tree_sortkey between tree_left(?) and tree_right(?) \
                   ) ) \
            order  by posting_date", message.message_id, forum_id, tree_sortkey, tree_sortkey])
  end

  def new
    @message = ForumsMessage.new

    respond_to do |format|
      format.html
      format.xml { render :xml => @forum }
    end
  end

  def create
    @message = ForumsMessage.new(params[:message])
    @message.posting_date = DateTime.now()

    #        set var_list [list \
    #             [list forum_id $forum_id] \
    #             [list message_id $message_id] \
    #             [list parent_id $parent_id] \
    #             [list subject $subject] \
    #             [list content $content] \
    #             [list format $format] \
    #             [list user_id $user_id]]

    respond_to do |format|
      if @message.save
        flash[:notice] = 'Message was created'
        format.html { redirect_to(@message) }
        format.xml { render :xml => @message, :status => :created, :location => @post }
      else
        format.html { render :action => 'new' }
        format.xml { render :xml => @message.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def maybe_redirect
    if params['forum_id'].nil?
      redirect_to :forums
    end
  end

end
