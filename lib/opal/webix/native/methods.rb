module Opal; module Webix
    
# Handle events using method missing on methods starting with 'on_'.
# @see Webix API docs http://docs.webix.com/api__toc__ui.html
# for event handling.
module Methods
  include NativeBase

  def method_missing(name, *args, &block)
    if name[0,3] == 'on_'
      args.insert(0, native_method(name))
      Native.call(@native, 'attachEvent', *argsex, &block)
    else
      Native.call(@native, native_method(name), *args, &block)
    end
  end

  # what's the point?
  # def respond_to?(name); true end

  private

  def native_method(name)
    c = camel_case(name)
    c[0].downcase + c[1..-1]
  end
end

end end

