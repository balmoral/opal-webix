module Opal; module Webix

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
  include Methods

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

end end
