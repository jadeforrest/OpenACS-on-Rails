# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title(page_title)
    content_for(:title) { page_title }
  end

  def h1(page_h1)
    content_for(:h1) { page_h1 }
  end

  # todo: move to Users model?
  def users_count
    Rails.cache.fetch("users_count_cache") { User.count }
  end

  # todo cache or refactor
  def last_seven_messages
      ForumsMessage.find(:all, :limit => 7, :order => "posting_date desc")
  end

  # todo cache or refactor
  def last_five_news
    CrNews.find_by_sql("select r.item_id, r.title, r.publish_date
                          from cr_news n, cr_revisions r, cr_items i
                         where n.news_id = r.revision_id
                           and i.item_id = r.item_id
                           and i.live_revision = r.revision_id
                           and r.publish_date < current_timestamp 
                           and (n.archive_date is null or n.archive_date > current_timestamp)
                         order by r.publish_date desc, r.item_id desc
                         limit 5")
  end

  def page_heading(text)
    content_tag(:h1, content_for(:title){ text })
  end

  # http://joshhuckabee.com/simple-breadcrumb-ruby-rails
  def bread_crumbs 
    s = ""
    url = request.path.split('?')  #remove extra query string parameters
    levels = url[0].split('/') #break up url into different levels
    levels.each_with_index do |level, index|
      unless level.blank?
        if index == levels.size-1 || 
            (level == levels[levels.size-2] && levels[levels.size-1].to_i > 0)
          s += "<li>#{level.gsub(/_/, ' ')}</li>\n" unless level.to_i > 0
        else
          link = "/"
          i = 1
          while i <= index
            link += "#{levels[i]}/"
            i+=1
          end
          s += "<li><a href=\"#{link}\">#{level.gsub(/_/, ' ')}</a></li>\n"
        end
      end
    end
    s
  end
  
end
