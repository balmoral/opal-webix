module Webix
  # @see http://docs.webix.com/api__refs__atomrender.html
  module AtomRender
    # methods
    alias_native :render
    alias_native :sync
    # events
    alias_native :on_after_render, :onAfterRender
    alias_native :on_before_render, :onBeforeRender
    # properties
    alias_native :content
    alias_native :template

    def self.included(klass)
      klass.extend AtomRender
    end
  end
end
