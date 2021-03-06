# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capncook/version'

Gem::Specification.new do |spec|
  spec.name          = "capncook"
  spec.version       = Capncook::VERSION
  spec.authors       = ["Cody Palmer"]
  spec.email         = ["teampalmer.apps@gmail.com"]

  spec.summary       = %q{Automatically create dummy user data themed after the show Breaking Bad.}
  spec.description   = 'Since most user/person/customer data structures have similar db attributes,'\
    'this gem will attempt to create those classes with attribute information based on the '\
    'show Breaking Bad.  For example: `User.create(name: "Walter White", email: '\
    '"crystalbluepersuasion@heisenberg.com", ...)`'
  
  spec.homepage      = "https://github.com/cdpalmer/capncook"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = ["lib/capncook.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "ffaker", "~> 2.0"
end
