# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_one_table_session',
  :secret      => '3007541a9421ddc40200e5b0f06c68ea0ca19a2de7059967b9983c9312e7af6e4ef394d3cd147e78289e681fff406d0e4517d42b38a5af65a1d08e286d719fb4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
