# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'note_taker'

Gem::Specification.new do |spec|
  spec.name          = "note_taker"
  spec.version       = NoteTaker::VERSION
  spec.authors       = ["bikeonastick"]
  spec.email         = ["bikeonastick@gmail.com"]
  spec.summary       = %q{Note taking.}
  spec.description   = %q{Take notes, set TODOs, set DONE, and list notes by day}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0") - %w(.ruby-gemset .ruby-version .gitignore Gemset Gemset.lock)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
