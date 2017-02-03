module MultiClient
  module Backend
    class ClientsController < Itsf::Backend::Resource::BaseController
      def self.resource_class
        MultiClient::Client
      end

      private

      def permitted_params
        params.require(:client).permit(:subdomain, :identifier, :enabled)
      end
    end
  end
end
