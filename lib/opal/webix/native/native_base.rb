module Opal; module Webix

module NativePatches
  extend Native::Helpers

  # Patch of Native.alias_native to provide us
  # with ability to specify:
  #    alias_native :ruby_name, :js_name, as_array_of: Class
  # which will map the elements of the native array
  # to elements type Class.
  def alias_native(new, old = new, options = {})
    if old.end_with? ?=
      define_method new do |value|
        `#@native[#{old[0 .. -2]}] = #{Native.convert(value)}`
        value
      end
    elsif klass = options[:as_array_of]
      define_method new do |*args, &block|
        if value = Native.call(@native, old, *args, &block)
          value.map{ |e| klass.new(e) }
        end
      end
    else
      if as = options[:as]
        define_method new do |*args, &block|
          if value = Native.call(@native, old, *args, &block)
            as.new(value.to_n)
          end
        end
      else
        define_method new do |*args, &block|
          Native.call(@native, old, *args, &block)
        end
      end
    end
  end
end

module NativeBase
  include Native

  def self.included(klass)
    #klass.extend Native::Helpers
    klass.extend NativePatches
  end

end

end end

