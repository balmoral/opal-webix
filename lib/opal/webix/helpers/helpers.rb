module Opal;  module Webix
  module_function

  # @see http://docs.webix.com/api__refs__common_helpers.html

  def webix_call(method, *args, &block)
    Native.call(`webix`, method, *args, &block)
  end

  # Creates an alert window.
  # @see http://docs.webix.com/api___alert.html
  def alert(*args, &block)
    webix_call(__method__, *args, &block)
  end

  # Animates an html area.
  # @see http://docs.webix.com/api___animate.html
  def animate(*args, &block)
    webix_call(__method__, *args, &block)
  end

  # Creates a confirm window.
  # @see http://docs.webix.com/api___confirm.html
  def confirm(*args, &block)
    webix_call(__method__, *args, &block)
  end

  # Executes a proc after number of milliseconds delay.
  # @see http://docs.webix.com/api___delay.html
  def delay(*args, &block)
    webix_call(__method__, *args, &block)
  end

  # Returns the DataProcessor for a component given the component id.
  # @see http://docs.webix.com/api___dp.html
  # alias_native :dp, as: DataProcessor
  def dp(*args, &block)
    o = webix_call(__method__, *args, &block)
    o ? DataProcessor.new(o) : nil
  end

  # Closes active editor in all webix components.
  # @see http://docs.webix.com/api___editstop.html
  def edit_stop(*args, &block)
    webix_call('editStop', *args, &block)
  end

  # Creates a message window.
  # @see http://docs.webix.com/api___message.html
  alias_native :message

  # All others are method-bridged through Helper::Component
  # @see Webix API docs for details

  alias_native :ajax, :ajax, as: Opal::Webix::Component
  alias_native :clipbuffer, :clipbuffer, as: Opal::Webix::Component
  alias_native :color, :color, as: Opal::Webix::Component
  alias_native :csv, :csv, as: Opal::Webix::Component
  alias_native :editors, :editors, as: Opal::Webix::Component
  alias_native :env, :env, as: Opal::Webix::Component
  alias_native :history, :history, as: Opal::Webix::Component
  alias_native :html, :html, as: Opal::Webix::Component
  alias_native :i18n, :i18n, as: Opal::Webix::Component
  alias_native :locale, :local, as: Opal::Webix::Component
  alias_native :markup, :markup, as: Opal::Webix::Component
  alias_native :promise, :promise, as: Opal::Webix::Component
  alias_native :rules, :rules, as: Opal::Webix::Component
  alias_native :storage_cookie, :storage_cookie, as: Opal::Webix::Component
  alias_native :storage_local, :storeage_local, as: Opal::Webix::Component
  alias_native :storage_session, :storage_session, as: Opal::Webix::Component

end end
