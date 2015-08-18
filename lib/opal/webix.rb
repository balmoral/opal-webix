if RUBY_ENGINE == 'opal'
  require 'opal/webix/setup'
else
  require 'opal'
  # require 'opal/webix/version'
  Opal.append_path File.expand_path('../..', __FILE__).untaint
end