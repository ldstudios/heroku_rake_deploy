# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heroku_rake_deploy/version'

Gem::Specification.new do |spec|
  spec.name          = "heroku_rake_deploy"
  spec.version       = HerokuRakeDeploy::VERSION
  spec.authors       = ["nrowegt", "danielricecodes"]
  spec.email         = ["nrowegt@gmail.com", "daniel.rice@ldstudios.co"]

  spec.summary       = "Helpful Heroku Deploy Rake Tasks"
  spec.description   = "Tasks to run appllication deploys and db restores for heroku:pg databases"
  spec.homepage      = "https://github.com/ldstudios/heroku_rake_deploy"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "heroku_db_restore", "~> 0.0.2"
  spec.add_runtime_dependency "heroku_db_restore", "~> 0.0.2"
end
