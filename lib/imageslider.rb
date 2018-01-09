require "imageslider/version"
require "imageslider/view_helpers"

module Imageslider
  # Your code goes here...
  class Engine < Rails::Engine
    initializer "imageslider.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
