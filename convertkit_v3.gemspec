# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'convertkit_v3/version'

Gem::Specification.new do |spec|
  spec.name          = "convertkit_v3"
  spec.version       = ConvertkitV3::VERSION
  spec.authors       = ["Jess Brown"]
  spec.email         = ["jess@brownwebdesign.com"]

  spec.summary       = %q{Wrapper for convert kit}
  spec.description   = %q{Gem wrapper for convertkit}
  spec.homepage      = "http://www.github.com/jess/convertkit_v3"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "dotenv"
end
