module SubjectsIntegration
  class Feature < SubjectsResource
    acts_as_active_resource_family_tree
    acts_as_indexable uid_prefix: 'subjects'
        
    def caption
      current_lang_code = Language.current.code
      self.nested_captions.detect{|c| c.language==current_lang_code}
    end
    
    def self.find_by_name(name)
      f = Feature.get("by_name/#{URI::encode(name)}").first
      f.nil? ? nil : self.find(f['id'])
    end
  end
end