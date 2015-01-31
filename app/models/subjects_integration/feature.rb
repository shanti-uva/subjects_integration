module SubjectsIntegration
  class Feature < SubjectsResource
    acts_as_active_resource_family_tree
    
    headers['Host'] = SubjectsResource.headers['Host'] if !SubjectsResource.headers['Host'].blank?
    
    def caption
      current_lang_code = Language.current.code
      self.nested_captions.detect{|c| c.language==current_lang_code}
    end
  end
end