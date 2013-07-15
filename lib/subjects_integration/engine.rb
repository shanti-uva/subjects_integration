module SubjectsIntegration
  class Engine < ::Rails::Engine
    initializer :assets do |config|
      Rails.application.config.assets.precompile.concat(['subjects_integration/jquery.draggable.popup.js'])
    end
  end
end
