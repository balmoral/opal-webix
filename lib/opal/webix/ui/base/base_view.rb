module Webix
  # The very base object for all components,
  # both non-layout and layout.
  # The component serves as the base class that
  # defines properties, methods, and events
  # common for all other components that make
  # up the library.
  # Terminology here is a little confusing as this
  # is the base class of BaseLayout and View, even
  # though View is base class of non-layout components.
  # @see http://docs.webix.com/api__refs__ui.baseview.html
  class BaseView
    include NativeBase
    extend AtomRender
    extend BaseBind
    extend Destruction
    # extend EventSystem
    extend Settings

    # event system methods
    alias_native :attach_event, :attachEvent
    alias_native :block_event, :blockEvent
    alias_native :call_event, :callEvent
    alias_native :detach_event, :detachEvent
    alias_native :has_event, :hasEvent
    alias_native :map_event, :mapEvent
    alias_native :unblock_event, :unblockEvent

    # methods
    alias_native :adjust
    alias_native :disable
    alias_native :enable
    alias_native :get_child_views, :getChildView
    # alias_native :get_form_view, :getFormView, as: View
    alias_native :get_node, :getNode
    # alias_native :get_parent_view, :getParentView, as: View
    alias_native :get_top_parent_view, :getTopParentView
    alias_native :hide
    alias_native :is_enabled, :isEnabled
    alias_method :enabled?, :is_enabled
    alias_native :is_visible, :isVisible
    alias_method :visible?, :is_visible
    alias_native :resize
    alias_native :show
    # properties
    alias_native :animate
    alias_native :borderless
    alias_method :borderless?, :borderless
    alias_native :container
    alias_native :css
    alias_native :disabled
    alias_method :disabled?, :disabled
    alias_native :gravity
    alias_native :height
    alias_native :hidden
    alias_method :hidden?, :hidden
    alias_native :max_height, :maxHeight
    alias_native :max_width, :maxWidth
    alias_native :min_height, :minHeight
    alias_native :min_width, :minWidth
    alias_native :width
    # other
    alias_native :config
    alias_native :name

    # Returns a string which specifies the
    # :view tag of the component per Webix
    # API docs. Defaults to lower case of
    # class name. Subclasses which don't
    # conform to this naming pattern should
    # override this method.
    def self.tag
      name.downcase
    end

  end
end
