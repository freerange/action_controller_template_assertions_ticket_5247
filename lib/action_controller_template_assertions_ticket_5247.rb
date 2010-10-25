require 'active_support/concern'
require 'action_controller/test_case'

module ActionController
  module TemplateAssertions
    attr_accessor :expected_layout
    alias :assert_template_broken :assert_template
    def assert_template(options = {}, message = nil)
      self.expected_layout = options[:layout]
      assert_template_broken(options, message)
    end
  end
end