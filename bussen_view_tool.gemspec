lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bussen_view_tool/version"

Gem::Specification.new do |spec|
  spec.name = "bussen_view_tool"
  spec.version = BussenViewTool::VERSION
  spec.authors = ["Christopher Bussen"]
  spec.email = ["cbussen7@gmail.com"]

  spec.summary = %q{Various view specific methods for applications I use}
  spec.description = %q{Provides generated HTML data for Rails applications}
  spec.homepage = "https"
  spec.license = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
