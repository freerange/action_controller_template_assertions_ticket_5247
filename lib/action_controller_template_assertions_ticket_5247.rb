require 'active_support/concern'
require 'action_controller/test_case'

module ActionController
  module TemplateAssertions
    attr_accessor :expected_layout
    alias :assert_template_broken :assert_template
    def assert_template(options = {}, message = nil)
      self.expected_layout = options[:layout]

      if options.is_a?(Hash)
        hide_warning = options.delete(:hide_warning)
        if options[:partial] && options.has_key?(:layout) && !hide_warning
          message = []
          message << "WARNING. You've specified both the :partial and :layout options to the assert_template method."
          message << "Although this will correctly check for the layout specified it won't validate the partial template name."
          message << "Consider using two assert_template calls.  One to check the partial and the other to check the layout (you'll need to specify the partial in both cases)."
          message << "You can ignore this message by passing :hide_warning => true to assert_template."
          warn message.join("\n")
        end
      end
      
      assert_template_broken(options, message)
    end
  end
end