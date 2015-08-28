module Opal; module Webix

# A pure view with borders but without any content inside it.
# The component serves as the base class that defines properties,
# methods, and events common for non-layout UI components.
# Can also be used as a placeholder in a layout.
# @see http://docs.webix.com/api__refs__ui.view.html
class Proto < BaseView
  # include NativeBase
=begin
  alias_native :add
  alias_native :add_css, :addCss
  alias_native :clear_all, :clearAll
  alias_native :clear_css, :clearCss
  alias_native :clear_validation, :clearValidation
  alias_native :count
  alias_native :customize
  alias_native :exists
  alias_method :exists?, :exists
  alias_native :filter
  alias_native :get_first_id, :getFirstId
  alias_native :get_id_by_index, :getIdByIndex
  alias_native :get_item, :getItem
  alias_native :get_item_node, :getItemNode
  alias_native :get_last_id, :getLastId
  alias_native :get_next_id, :getNextId
  alias_native :get_page, :getPage
  alias_native :get_pager, :getPager
  alias_native :get_prev_id, :getPrevId
  alias_native :has_css, :hasCss
  alias_method :has_css?, :has_css
  alias_native :has_event, :hasEvent
  alias_method :has_event?, :has_event
  alias_native :refresh
=end
end

end end
