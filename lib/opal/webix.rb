module Opal; module Webix
  include NativeBase
  module_function
  class UnsupportedFeature < RuntimeError; end
  class DataProcessor; end
end end
$webix = Opal::Webix

if RUBY_ENGINE == 'opal'
  require 'opal/webix/setup'
else
  require 'opal'
  require 'opal/webix/version'
  Opal.append_path File.expand_path('../..', __FILE__).untaint
end

