# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_magic_show_session',
  :secret      => '85fd8bd048293f4655b8464e7780de7ddd209c69ad09e5b4acd270aaa2b1fd095841bb01cdb87ebb627018b42aaace127f7a4d77723ba44b8667f467ad2cc12c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
