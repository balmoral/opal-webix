# @see http://docs.webix.com/
module Webix
  module UI
    def new(config_options)
      %x{
        webix.ready(function(){
          webix.ui(#{config_options})
        });
      }
    end
  end
end