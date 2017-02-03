module MultiClient
  module Backend
    class Engine < ::Rails::Engine
      isolate_namespace MultiClient::Backend  
    end
  
  end
end



