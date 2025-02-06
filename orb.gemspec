# frozen_string_literal: true

require_relative "lib/orb/version"

Gem::Specification.new do |s|
  s.name = "orb"
  s.version = Orb::VERSION
  s.summary = "Ruby library to access the Orb API"
  s.authors = ["Orb"]
  s.email = "team@withorb.com"
  s.files = Dir["lib/**/*.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/orb/latest"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/orbcorp/orb-ruby"
  s.metadata["rubygems_mfa_required"] = "true"
end
