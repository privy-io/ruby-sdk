# frozen_string_literal: true

require_relative "lib/privy/version"

Gem::Specification.new do |s|
  s.name = "privy"
  s.version = Privy::VERSION
  s.summary = "Ruby library to access the Privy API API"
  s.authors = ["Privy API"]
  s.email = "support@privy.io"
  s.homepage = "https://gemdocs.org/gems/privy"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/privy-io/ruby-sdk"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

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
  s.add_dependency "cgi"
  s.add_dependency "connection_pool"
end
