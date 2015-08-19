module Webix
  # @see http://docs.webix.com/api__refs__destruction.html
  module Destruction
    include NativeBase
    # methods
    alias_native :destructor
    # events
    alias_native :on_destruct, :onDestruct
  end
end
