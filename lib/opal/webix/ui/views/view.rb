module Webix
  # A pure view with borders but without any content inside it.
  # The component serves as the base class that defines properties,
  # methods, and events common for non-layout UI components.
  # Can also be used as a placeholder in a layout.
  # @see http://docs.webix.com/api__refs__ui.view.html
  class View
    include BaseView

    alias_native :attach_event, :attachEvent
    alias_native :block_event, :blockEvent
    alias_native :call_event, :callEvent
    alias_native :detach_event, :detachEvent
    alias_native :has_event, :hasEvent
    alias_native :map_event, :mapEvent
    alias_native :unblock_event, :unblockEvent
  end
end
