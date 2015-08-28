module Opal; module Webix
    
# Handle events using method missing on methods starting with 'on_'.
# @see Webix API docs http://docs.webix.com/api__toc__ui.html
# for event handling.
module Methods
  include NativeBase

  def method_missing(name, *args, &block)
    if name[0,3] == 'on_'
      Native.call(@native, camel_case(name[3..-1]), *args, &block)
    else
      Native.call(@native, camel_case(name), *args, &block)
    end
  end

  def respond_to?(name)
    true
  end

end

end end
