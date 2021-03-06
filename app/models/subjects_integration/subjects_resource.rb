module SubjectsIntegration
  class SubjectsResource < ActiveResource::Base
    #cached_resource
    
    case InterfaceUtils::Server.environment
    when InterfaceUtils::Server::DEVELOPMENT
      self.site = "http://dev-subjects.#{InterfaceUtils::Server.get_domain}/"
    when InterfaceUtils::Server::STAGING
      self.site = "http://staging-subjects.#{InterfaceUtils::Server.get_domain}/"
    when InterfaceUtils::Server::PRODUCTION
      self.site = "http://subjects.#{InterfaceUtils::Server.get_domain}/"
    when InterfaceUtils::Server::LOCAL
      self.site = "http://localhost/shanti/subjects/"
    else
      self.site = "http://subjects.#{InterfaceUtils::Server.get_domain}/"
    end

    self.timeout = 100
    self.format = :xml
  end
end
