# @see http://docs.webix.com/
module UI
  def new(config_options)
    `webix.ui(#{config_options})`
  end
end