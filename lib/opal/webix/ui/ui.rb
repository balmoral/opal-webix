# @see http://docs.webix.com/
module Webix
  module UI
    def new(options)
      %x{
        webix.ready(function(){
          webix.ui(#{options})
        });
      }
    end
  end
end