module SubjectsIntegration
  class SubjectsResource < ActiveResource::Base
    #cached_resource
    
    case InterfaceUtils::Server.environment
    when InterfaceUtils::Server::DEVELOPMENT
      self.site = "https://dev-subjects.kmaps.virginia.edu/"
    when InterfaceUtils::Server::PRODUCTION
      self.site = "https://subjects.kmaps.virginia.edu/"
    when InterfaceUtils::Server::NOD_DEV
      self.site = "https://nod-subjects-dev.utm.utoronto.ca/"
    when InterfaceUtils::Server::NOD_PRD
      self.site = "https://nod-subjects.utm.utoronto.ca/"
    when InterfaceUtils::Server::LOCAL
      self.site = "http://localhost/shanti/subjects/"
    else
      self.site = "https://subjects.kmaps.virginia.edu/"
    end

    self.timeout = 100
    self.format = :xml
  end
end
