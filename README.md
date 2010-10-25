## Intro

Include this in your Rails app to fix the 'undefined local variable expected\_layout' error when you attempt to assert\_template with a partial and layout.  This is documented in [lighthouse ticket 5247](https://rails.lighthouseapp.com/projects/8994/tickets/5247-assert_template-wrong-behavior-for-testing-layout-used-to-render-template).

## The problem

A test that attempts to check that a partial is rendered with a specific layout will fail.

    def test_should_render_partial_with_layout
      get :test_action
      
      assert_template :partial => '_my_partial', :layout => 'my_layout'
    end

The failure will be something like:

      1) Error:
    test: test_should_render_partial_with_layout. (MyControllerTest):
    NameError: undefined local variable or method `expected_layout' for #<MyControllerTest:0x106425368>
        actionpack (3.0.1) lib/action_dispatch/testing/assertions/routing.rb:177:in `method_missing'
        actionpack (3.0.1) lib/action_controller/test_case.rb:95:in `assert_template'
        test/functional/my_controller_test.rb:47:in `__bind_1288026294_459314'
      
## The fix

Include this gem in your rails app by adding this to your Gemfile.

    gem 'action_controller_template_assertions_ticket_5247', :git => 'git://github.com/freerange/action_controller_template_assertions_ticket_5247.git'