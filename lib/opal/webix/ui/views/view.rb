module Webix
  # A pure view with borders but without any content inside it.
  # The component serves as the base class that defines properties,
  # methods, and events common for non-layout UI components.
  # Can also be used as a placeholder in a layout.
  # @see http://docs.webix.com/api__refs__ui.view.html
  class View
    include BaseView
    extend UI

    # events
    alias_native :on_after_scroll, :onAfterScroll
    alias_native :on_key_press, :onKeyPress
    alias_native :on_long_touch, :onLongTouch
    alias_native :on_swipe_x, :onSwipeX
    alias_native :on_swipe_y, :onSwipeY
    alias_native :on_timed_key_press, :onTimedKeyPress
    alias_native :on_touch_end, :onTouchEnd
    alias_native :on_touch_move, :onTouchMove
    alias_native :on_touch_start, :onTouchStart
    alias_native :on_view_resize, :onViewResize
  end
end
