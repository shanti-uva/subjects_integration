module SubjectsIntegration
  class Feature < SubjectsResource
    acts_as_active_resource_family_tree
    
    headers['Host'] = SubjectsResource.headers['Host'] if !SubjectsResource.headers['Host'].blank?
  end
  
end