# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require 'condo/version'

Gem::Specification.new do |spec|
  spec.name          = "condo_grids"
  spec.version       = Condo::VERSION
  spec.authors       = ["Kyle Shevlin"]
  spec.email         = ["kyle.a.shevlin@gmail.com"]

  spec.summary       = %q{A tiny Sass grid library.}
  spec.description   = %q{Condo is a tiny, lightweight Sass grid library with no bells or whistles. Enough to get the job done. Nothing more. Nothing less.}
  spec.homepage      = "https://github.com/kyleshevlin/condo"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
