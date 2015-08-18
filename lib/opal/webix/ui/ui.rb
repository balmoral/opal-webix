# @see http://docs.webix.com/
module Webix
  module UI
    def create(options)
      h = options.to_h
      console.log "#{self.class.name}##{__method__}[#{__LINE__}] : calling webix.ui(#{h})"
      %x{
        webix.ready(function(){
          webix.ui(#{h.to_n})
        });
      }
      self
    end
  end
end