# @see http://docs.webix.com/
module Opal
  module Webix
    module_function

    module UI
      module_function

      def create(options)
        h = options.to_h
        puts "#{self.class.name}##{__method__}[#{__LINE__}] : calling webix.ui(#{h})"
        # the caller should ensure the
        # %x{
        #   webix.ready(function(){
        #     webix.ui(#{h.to_n})
        #   });
        # }
        `webix.ui(#{h.to_n})`
        self
      end

      def [](id)
        o = `webix.$$(#{id})`
        is_null = `o == null`
        puts "#{self.name}##{__method__}[#{__LINE__}](#{id}) o => #{o} is_null=#{is_null}"
        `o == null` ? nil : Component.new(o)
      end

    end

    def ui
      UI
    end

  end
end

$webix = Opal::Webix