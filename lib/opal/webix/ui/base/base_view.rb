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

    # ##########
    # AtomRender
    # ##########

    # methods
    alias_native :render
    alias_native :sync
    # events
    alias_native :on_after_render, :onAfterRender
    alias_native :on_before_render, :onBeforeRender
    # properties
    alias_native :content
    alias_native :template

    # ########
    # BaseBind
    # ########

    # methods
    alias_native :bind
    alias_native :unbind
    # events
    alias_native :on_bind_request, :onBindRequest

    # ###########
    # Destruction
    # ###########

    # methods
    alias_native :destructor
    # events
    alias_native :on_destruct, :onDestruct

    # ###########
    # EventSystem
    # ###########

    # methods
    # alias_native :attach_event, :attachEvent
    def attach_event(event, proc = nil, &block)
      if proc
        console.log "#{self.class.name}##{__method__}[#{__LINE__}](#{event}) : proc : call native attachEvent(#{proc})"
        Native.call(to_n, 'attachEvent', event, proc)
      else
        console.log "#{self.class.name}##{__method__}[#{__LINE__}](#{event}) : block : call native attachEvent(#{block})"
        Native.call(to_n, 'attachEvent', event, &block)
      end
    end
    alias_native :block_event, :blockEvent
    alias_native :call_event, :callEvent
    alias_native :detach_event, :detachEvent
    alias_native :has_event, :hasEvent
    alias_native :map_event, :mapEvent
    alias_native :unblock_event, :unblockEvent
    # properties
    alias_native :on

    # ########
    # Settings
    # ########

    # methods
    alias_native :define
    # properties
    alias_native :id

    # ########
    # BaseView
    # ########

    # methods
    alias_native :adjust
    alias_native :disable
    alias_native :enable
    alias_native :get_child_views, :getChildView # array of natives: need to map to views
    alias_native :get_form_view, :getFormView # returns native: needs to be wrapped
    alias_native :get_node, :getNode # returns native: needs to be wrapped
    alias_native :get_parent_view, :getParentView # returns native: needs to be wrapped
    alias_native :get_top_parent_view, :getTopParentView # returns native: needs to be wrapped
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
