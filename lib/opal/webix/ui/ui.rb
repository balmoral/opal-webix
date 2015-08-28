# @see http://docs.webix.com/
module Opal
  module Webix
    module_function

    module UI
      module_function

      # See Webix API docs for config options
      # Caller should ensure the doc is ready
      def <<(options)
        h = options.to_h
        # `console.log(#{"#{self.class.name}##{__method__}[#{__LINE__}] : calling webix.ui(#{h})"})`
        `webix.ui(#{h.to_n})`
        self
      end
      alias_method :add, :<<

      # Returns an Opal::Webix::Component wrapper
      # of Webix component with the given id.
      # Returns nil if no component is found.
      # Any Webix function relevant to the component
      # may be called from Ruby. At present any
      # value returned from these methods will be
      # native objects, unless the value is a basic
      # type: boolean, numeric, strings, etc.
      # As appropriate you can wrap these values
      # using Opal::Webix::Component.new(native)
      # or Native.new(native).
      def [](id)
        o = `webix.$$(#{id})`
        is_null = `o == null`
        `console.log(#{"#{self.name}##{__method__}[#{__LINE__}](#{id}) o => #{o} is_null=#{is_null}"})`
        is_null ? nil : Opal::Webix::Component.new(o)
      end
      alias_method :get, :[]

    end

    def ui
      UI
    end

  end
end

