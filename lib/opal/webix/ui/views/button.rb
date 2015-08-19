module Webix
  # http://docs.webix.com/api__refs__ui.button.html
  class Button < View
    # methods
    alias_native :blur
    alias_native :focus
    alias_native :get_value, :getValue
    alias_method :value, :get_value
    alias_native :set_value, :setValue
    alias_method :value=, :set_value
    alias_native :sync
    # events
    alias_native :on_after_render, :onAfterRender
    alias_native :on_before_render, :onBeforeRender
    alias_native :on_change, :onChange

    def on_item_click(proc = nil, &block)
      attach_event(proc, &block)
    end
    alias_method :on_click, :on_item_click

  end
end

