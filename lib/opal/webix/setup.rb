# We need the Opal Native support library here:
require 'native'

# These requires must be loaded in order of dependency:
require 'opal/webix/native/native_base'
require 'opal/webix/ui'
require 'opal/webix/ui/base/base_view'
require 'opal/webix/ui/view'
require 'opal/webix/ui/button'


module Webix

  class UnsupportedFeature < RuntimeError; end

  class Webix;    end
  class BaseView; end
  class View;     end
  class Button;   end

end

