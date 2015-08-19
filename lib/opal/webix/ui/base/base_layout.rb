module Webix
  # A base class for layout-based UI components.
  # The component serves as the base class that
  # defines properties, methods, and events
  # common for all layout-based components.
  # Not intended for direct use, instead
  # use Layout class or descendants.
  # @see http://docs.webix.com/api__refs__ui.baselayout.html
  class BaseLayout < BaseView
    # methods
    alias_native :add_view, :addView
    alias_native :reconstruct
    alias_native :remove_view, :removeView
    alias_native :resize_children, :resizeChildren
    alias_native :show_batch, :showBatch
    alias_native :show_batch, :showBatch
    # properties
    alias_native :cols
    alias_native :responsive
    alias_native :rows
    alias_native :visible_batch, :visibleBatch

  end
end
