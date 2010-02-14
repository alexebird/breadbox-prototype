# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_breadbox_session',
  :secret => '32d333cd582220a31043d4e7be6ee9e80a6e1433ac51c01a870b52cc95b6da332167d2b41589211434162b8deadc55648980c199ec336b0784e47935a42f6c40'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
