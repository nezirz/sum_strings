
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sum_strings/version"

Gem::Specification.new do |spec|
  spec.name          = "sum_strings"
  spec.version       = SumStrings::VERSION
  spec.authors       = ["nezir"]
  spec.email         = ["nezir.zahirovic@gmail.com"]

  spec.summary       = %q{Gem for summing string values from arrays.}
  spec.description   = %q{With this gem you are able to sum array of strings values. Primary ment for summing array of hours in format ["20:25","10:10"].strings_to_sum(':') which will result as "30:35" hours/minutes. }
  spec.homepage      = "https://github.com/nezirz/sum_strings"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
