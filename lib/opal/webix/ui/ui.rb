# @see http://docs.webix.com/
module Opal; module Webix
  module_function

  module UI
    module_function

    # See Webix API docs for config options
    # Caller should ensure the doc is ready
    def <<(options)
      h = strip_ids_from_ons(options.to_h)
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

    private

    # Volt::Model's add id's to all embedded models.
    # And Webix doesn't handle id's in 'on' hashes.
    # So we gotta get rid of them.
    def strip_ids_from_ons(arg)
      if arg.is_a?(Hash)
        on = arg[:on]
        if on
          strip_ids_from_on(on.dup)
        else
          arg.each_value do |v|
            strip_ids_from_ons(v)
          end
        end
      elsif arg.is_a?(Enumerable)
        arg.each do |v|
          strip_ids_from_ons(v)
        end
      # else do no more
      end
    end

    # Delete any entries with key :id for given hash
    # and do so recursively for any nested hashes.
    def strip_ids_from_on(hash)
      x = hash.delete(:id)
      puts "#{self.class.name}##{__method__}: hash.delete(:id) => #{x}"
      hash.each_value do |k, v|
        if v.is_a?(Hash)
          strip_ids_from_on(v)
        end
      end
    end

    def deinit_webix
      page._webix = nil
    end

    # To be reactive we must watch for model changes
    def start_watching
      @in_start = true
    end


    def debug(_method, line, s = nil)
      Volt.logger.debug "#{self.class.name}##{_method}[#{line}] : #{s}"
    end


  end

  def ui
    UI
  end

end end

