lib = File.expand_path("lib", __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "arpabet/version"
Gem::Specification.new do |spec|
  spec.name          = "arpabet"
  spec.version       = Arpabet::VERSION
  spec.authors       = ["avlos"]
  spec.email         = ["operations@avlos.io"]
  spec.license       = "GPL-3.0"
  spec.summary       = "arpabet to IPA"
  spec.description   = "arpabet to IPA parser"
  spec.homepage      = "https://gems.avlos.tech/arpabet/"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features|coverage|web|bin|\.*)/})
  }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = "~> 2.2"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "jekyll", "~> 3.4"
  spec.add_development_dependency "jekyll-theme-minimal", "~> 0.0.4"
  spec.add_development_dependency "paint", "~> 2.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "rubocop", "~> 0.49"
  spec.add_development_dependency "simplecov", "~> 0.14"
end
