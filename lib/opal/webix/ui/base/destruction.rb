module Webix
  # @see http://docs.webix.com/api__refs__destruction.html
  module Destruction
    # methods
    alias_native :destructor
    # events
    alias_native :on_destruct, :onDestruct

    def self.included(klass)
      klass.extend Destruction
    end

  end
end
