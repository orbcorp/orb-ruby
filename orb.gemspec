# frozen_string_literal: true

require_relative "lib/orb/version"

Gem::Specification.new do |s|
  s.name = "orb-billing"
  s.version = Orb::VERSION
  s.summary = "Ruby library to access the Orb API"
  s.authors = ["Orb"]
  s.email = "team@withorb.com"
  s.homepage = "https://gemdocs.org/gems/orb-billing"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/orbcorp/orb-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.0.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
