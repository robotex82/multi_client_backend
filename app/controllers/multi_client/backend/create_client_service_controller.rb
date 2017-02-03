module MultiClient
  module Backend
    class CreateClientServiceController < Itsf::Backend::Service::BaseController
      def self.service_class
        MultiClient::CreateClientService
      end

      private

      def permitted_params
        # params.require(:chi_tenants_create_tenant_service).permit(:subdomain, :identifier, :enabled, :brand_primary_color, :logo, :user_emails, :create_roles_and_permissions, product_ids: []).merge(request_host: request.host)
        params.require(:create_client_service).permit(:subdomain, :identifier, :enabled, :user_emails, :create_roles_and_permissions).merge(request_host: request.host)
      end
    end
  end
end