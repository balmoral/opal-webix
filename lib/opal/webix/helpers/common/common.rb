class Webix
  module_function

  # @see http://docs.webix.com/api__refs__common_helpers.html

  def webix
    `webix`
  end

  # Creates an alert window.
  # @see http://docs.webix.com/api___alert.html
  def alert(*args, &block)
    Native.call(webix, __method__, *args, &block)
  end

  # Animates an html area.
  # @see http://docs.webix.com/api___animate.html
  alias_native :animate

  # Creates a confirm window.
  # @see http://docs.webix.com/api___confirm.html
  alias_native :confirm

  # Executes a proc after number of milliseconds delay.
  # @see http://docs.webix.com/api___delay.html
  alias_native :delay

  # Returns the dataprocessor object given a component id.
  # @see http://docs.webix.com/api___dp.html
  alias_native :dp, as: DataProcessor

  # Closes active editor in all webix components.
  # @see http://docs.webix.com/api___editstop.html
  alias_native :edit_stop, :editStop

  # Creates a message window.
  # @see http://docs.webix.com/api___message.html
  alias_native :message


end
