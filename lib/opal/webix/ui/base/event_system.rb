module Webix
  # @see http://docs.webix.com/api__refs__eventsystem.html
  module EventSystem
    # methods
    alias_native :attach_event, :attachEvent
    alias_native :block_event, :blockEvent
    alias_native :call_event, :callEvent
    alias_native :detach_event, :detachEvent
    alias_native :has_event, :hasEvent
    alias_native :map_event, :mapEvent
    alias_native :unblock_event, :unblockEvent
    # properties
    alias_native :on

    def self.included(klass)
      klass.extend EventSystem
    end

  end
end
