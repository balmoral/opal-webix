module Opal
  module Webix
    # A vertical or horizontal layout without the headers.
    # The component allows you to programmatically define
    # interface structure by organizing views in a vertical
    # or horizontal layout. By including layouts one by one,
    # it's possible to create a final screen of any complexity.
    # @see http://docs.webix.com/api__refs__ui.layout.html
    class Layout < BaseLayout
      # methods
      alias_native :index
      # properties
      alias_native :isolate
      alias_native :margin
      alias_native :padding
      alias_native :padding_x, :paddingX
      alias_native :padding_y, :paddingY
      alias_native :type
    end
  end
end
