module Opal; module Webix
    
# Handle events using method missing on methods starting with 'on_'.
# @see Webix API docs http://docs.webix.com/api__toc__ui.html
# for event handling.
module Methods
  include NativeBase

  def method_missing(name, *args, &block)
    if name[0,3] == 'on_'
      `console.log(#{"method_missing: #{self.class.name}##{name} : calling native '#{__translate(name[3..-1])}'"})`
      Native.call(@native, __translate(name[3..-1]), *args, &block)
    else
      `console.log(#{"method_missing: #{self.class.name}##{name} : calling native '#{__translate(name)}'"})`
      Native.call(@native, __translate(name), *args, &block)
    end
  end

  def respond_to?(name)
    true
  end

  private

  def __translate(method_name)
    c = camel_case(method_name)
    c[0].downcase + c[1..-1]
  end
end

end end

