# @see http://docs.webix.com/
module Webix
  module UI
    module_function

    def create(options)
      h = options.to_h
      puts "#{self.class.name}##{__method__}[#{__LINE__}] : calling webix.ui(#{h})"
      # %x{
      #   webix.ready(function(){
      #     webix.ui(#{h.to_n})
      #   });
      # }
      `webix.ui(#{h.to_n})`
      self
    end

    def view(id);     wrap(id, Webix::View)    end
    def proto(id);    wrap(id, Webix::Proto)   end
    def button(id);   wrap(id, Webix::Button)  end

    def wrap(id, klass)
      o = `webix.$$(#{id})`
      is_null = `o == null`
      puts "#{self.name}##{__method__}[#{__LINE__}](#{id}, #{klass}) o => #{o} is_null=#{is_null}"
      `o == null` ? nil : klass.new(o)
    end

  end
end