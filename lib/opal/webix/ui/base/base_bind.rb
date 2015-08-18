module Webix
  # @see http://docs.webix.com/api__refs__basebind.html
  module BaseBind
    # methods
    alias_native :bind
    alias_native :unbind
    # events
    alias_native :on_bind_request, :onBindRequest
  end
end
