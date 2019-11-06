// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
Unsplash.configure do |config|
  config.application_access_key = "03521c1db0902583c991a69d2663bddd721f4d3ae20c9c637b0bcc5eb42d7a7a"
  config.application_secret = "95d7dd845fef52608e2f8d931c48df5944e5bbe639a7c858e54bf75899cabb64"
  config.application_redirect_uri = "https://your-application.com/oauth/callback"
  config.utm_source = "alices_terrific_client_app"

  # optional:
  config.logger = MyCustomLogger.new
end
