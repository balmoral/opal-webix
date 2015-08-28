module Opal; module Webix
    
# Bridge missing methods to Webix API calls.
# Translate and augment as required.
module MethodsBridge

  def method_missing(name, *args, &block)
    `console.log(#{"#{self.class.name}#method_missing(#{name},...)"})`
    if name[0,3] == 'on_'
      args.insert(0, native_method(name))
      Native.call(@native, 'attachEvent', *args, &block)
    else
      Native.call(@native, native_method(name), *args, &block)
    end
  end

  # What's the point?
  # def respond_to?(name); true end

  private

  def native_method(name)
    c = camel_case(name)
    c[0].downcase + c[1..-1]
  end
end

end end

