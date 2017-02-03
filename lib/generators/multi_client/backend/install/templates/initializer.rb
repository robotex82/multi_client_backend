MultiClient::Backend.configure do |config|
  # Set the resources, that will be shown in the backend menu.
  #
  # Default: config.registered_controllers = -> {[
  #            MultiClient::Backend::ClientsController
  #          ]}
  #
  config.registered_controllers = lambda {
    [
      MultiClient::Backend::ClientsController
    ]
  }

  # Set the services, that will be shown in the backend menu.
  #
  # Default: config.registered_services = -> {[
  #            MultiClient::Backend::CreateClientServiceController
  #          ]}
  #
  config.registered_services = -> {
    [
      MultiClient::Backend::CreateClientServiceController
    ]
  }
end
