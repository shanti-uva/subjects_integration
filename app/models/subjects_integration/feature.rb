module SubjectsIntegration
  class Feature < SubjectsResource
    headers['Host'] = SubjectsResource.headers['Host'] if !SubjectsResource.headers['Host'].blank?
  end
end