module SubjectsIntegration
  class SubjectsResource < ActiveResource::Base
    #cached_resource
    
    case InterfaceUtils::Server.environment
    when InterfaceUtils::Server::DEVELOPMENT
      self.site = "http://dev-subjects.kmaps.virginia.edu/"
    when InterfaceUtils::Server::STAGING
      self.site = "http://staging-subjects.kmaps.virginia.edu/"
    when InterfaceUtils::Server::PRODUCTION
      self.site = "http://subjects.kmaps.virginia.edu/"
    when InterfaceUtils::Server::LOCAL
      self.site = "http://localhost/shanti/subjects/"
    else
      self.site = "http://subjects.kmaps.virginia.edu/"
    end

    self.timeout = 100
    self.format = :xml
  end
end
