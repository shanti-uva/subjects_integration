$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subjects_integration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "subjects_integration"
  s.version     = SubjectsIntegration::VERSION
  s.authors     = ["Andres Montano"]
  s.email       = ["amontano@virginia.edu"]
  s.homepage    = "http://subjects.kmaps.virginia.edu"
  s.summary     = "Engine to facilitate connecting to the Shanti Subjects App."
  s.description = "Engine to facilitate connecting to the Shanti Subjects App."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.2.5'
  # s.add_dependency "jquery-rails"

  # Use postgresql as the database for Active Record
  s.add_dependency 'pg', '~> 0.15'
  
end
