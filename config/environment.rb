RAILS_GEM_VERSION = '2.1.2' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem "Bill-route_name_for" # a random github gem

  # this observer's model class (Splat) needs initialize_splat to be loaded before splat is loaded
  config.active_record.observers = :splat_observer


  config.time_zone = 'UTC'
  config.action_controller.session = {
    :session_key => '_ObserversLoadedWhenGemsAreMissing_session',
    :secret      => '8ce1bcb56f790f88e41829814bc79bcd8d445c505a91529c06d89cc26978efd07fdd0d6bf252343c3790fceea8f780e4632a64d6536a28f4fd97b3e72acf862f'
  }
end
