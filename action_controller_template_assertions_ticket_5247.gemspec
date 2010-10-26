# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{action_controller_template_assertions_ticket_5247}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Roos & Jason Cale"]
  s.date = %q{2010-10-26}
  s.email = %q{lets@gofreerange.com}
  s.files = ["lib/action_controller_template_assertions_ticket_5247.rb"]
  s.homepage = %q{http://gofreerange.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Monkey patches ActionController::TemplateAssertions#assert_template to fix ticket 5247}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["= 3.0.1"])
      s.add_runtime_dependency(%q<actionpack>, ["= 3.0.1"])
    else
      s.add_dependency(%q<activesupport>, ["= 3.0.1"])
      s.add_dependency(%q<actionpack>, ["= 3.0.1"])
    end
  else
    s.add_dependency(%q<activesupport>, ["= 3.0.1"])
    s.add_dependency(%q<actionpack>, ["= 3.0.1"])
  end
end
