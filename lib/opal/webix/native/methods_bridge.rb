module Opal; module Webix
    
# Bridge missing methods to Webix API calls.
# Translate and augment as required.
module MethodsBridge

  def method_missing(name, *args, &block)
    # `console.log(#{"#{self.class.name}#method_missing(#{name},...)"})`
    if name[0,3] == 'on_'
      args.insert(0, camel_case(name))
      Native.call(@native, 'attachEvent', *args, &block)
    else
      Native.call(@native, camel_case(name), *args, &block)
    end
  end

  # What's the point?
  # def respond_to?(name); true end

  private

  def camel_case(s)
    s.gsub(/[_\-][a-z]/) { |a| a[1].upcase }
  end

end

end end

