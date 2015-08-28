module Opal; module Webix
    
# Bridge missing methods to Webix API calls.
# Translate and augment as required.
module MethodBridge

  def method_missing(name, *args, &block)
    cc = __camel_case(name)
    `console.log(#{"#{self.class.name}#method_missing(#{name},...) => #{cc}"})`
    if name[0,3] == 'on_'
      args.insert(0, cc)
      Native.call(@native, 'attachEvent', *args, &block)
    else
      Native.call(@native, cc, *args, &block)
    end
  end

  # What's the point if we cover any missing method?
  # def respond_to?(name); true end

  private

  def __camel_case(s)
    s.gsub(/[_\-][a-z]/) { |a| a[1].upcase }
  end

end

end end

