module SubjectsIntegration
  class SubjectsResource < ActiveResource::Base
    #cached_resource
    
    case InterfaceUtils::Server.environment
    when InterfaceUtils::Server::DEVELOPMENT
      self.site = 'http://127.0.0.1/'
      headers['Host'] = 'dev-subjects.kmaps.virginia.edu' #"dev-subjects.#{InterfaceUtils::Server.get_domain}"
    when InterfaceUtils::Server::STAGING
      self.site = 'http://127.0.0.1/'
      headers['Host'] = 'staging-subjects.kmaps.virginia.edu' #"staging-subjects.#{InterfaceUtils::Server.get_domain}"
    when InterfaceUtils::Server::PRODUCTION
      self.site = 'http://127.0.0.1/'
      headers['Host'] = 'subjects.kmaps.virginia.edu' #"subjects.#{InterfaceUtils::Server.get_domain}"
    when InterfaceUtils::Server::LOCAL
      self.site = 'http://localhost/shanti/subjects/'
    else
      self.site = 'http://subjects.kmaps.virginia.edu' #"http://subjects.#{InterfaceUtils::Server.get_domain}/"
    end

    self.timeout = 100
    self.format = :xml
  end
end
