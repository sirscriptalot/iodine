# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iodine/version'

Gem::Specification.new do |spec|
  spec.name          = "iodine"
  spec.version       = Iodine::VERSION
  spec.authors       = ["Boaz Segev"]
  spec.email         = ["Boaz@2be.co.il"]

  spec.summary       = %q{ Iodine - writing C servers in Ruby.}
  spec.description   = %q{ Iodine - writing C servers in Ruby.}
  spec.homepage      = "https://github.com/boazsegev/iodine"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "none" #"https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "ext"]

  spec.extensions = %w[ext/iodine/extconf.rb]

  spec.add_dependency "rake-compiler"
  spec.add_dependency "rack"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
