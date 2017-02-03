module MultiClient
  module Backend
    module Configuration
      def configure
        yield self
      end
    
      mattr_accessor(:registered_controllers) do
        ->() do
          [
            MultiClient::Backend::ClientsController
          ]
        end
      end
    
      mattr_accessor(:registered_services) do
        ->() do
          [
            MultiClient::Backend::CreateClientServiceController
          ]
        end
      end
    end
  end
end
