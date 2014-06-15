require File.join(File.dirname(__FILE__), 'boot')
require 'subdomain-fu'


SubdomainFu.tld_sizes = {:development => 1,
                         :test => 0,
                         :production => 1}
SubdomainFu.mirrors = ["www"]

RAILS_GEM_VERSION = '2.3.11' unless defined? RAILS_GEM_VERSION

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  config.gem 'declarative_authorization', :source => 'http://gemcutter.org'

  config.load_once_paths += %W( #{RAILS_ROOT}/lib )
  config.load_paths += Dir["#{RAILS_ROOT}/app_p/models/*"].find_all { |f| File.stat(f).directory? }

  config.reload_plugins = true if RAILS_ENV =="development"
  config.plugins = [:paperclip,:all]

end