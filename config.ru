# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

if ENV['RACK_ENV'] == 'production'
 use Rack::Rewrite do
 r301 %r{.*}, 'http://www.review-app.biz/$&', :if => Proc.new {|rack_env|
 rack_env['SERVER_NAME'] != 'www.review-app.biz'
 }
 end
end