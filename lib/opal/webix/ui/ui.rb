# @see http://docs.webix.com/
module Webix
  module UI
    module_function

    def create(options)
      h = options.to_h
      puts "#{self.class.name}##{__method__}[#{__LINE__}] : calling webix.ui(#{h})"
      %x{
        webix.ready(function(){
          webix.ui(#{h.to_n})
        });
      }
      self
    end

     def view(id);     wrap(id, Webix::View)    end
     def button(id);   wrap(id, Webix::Button)  end

     private

     def wrap(id, klass)
       o = `$$(#{id})`
       o ? klass.new(o) : nil
     end

  end
end