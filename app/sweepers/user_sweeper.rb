class UserSweeper < ActionController::Caching::Sweeper
  observe User

  def after_save(user)
    expire_users_count_cache
  end

  def after_destroy(user)
    expire_users_count_cache
  end

  private

  def expire_users_count_cache
    Rails.cache.clear("users_count_cache")
  end

end
