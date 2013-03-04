# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'biscope/version'

Gem::Specification.new do |gem|
  gem.name          = "biscope"
  gem.version       = Biscope::VERSION
  gem.authors       = ["abhishekkr"]
  gem.email         = ["abhikumar163@gmail.com"]
  gem.description   = %q{It will start a HTTP Server at the provided path and serve all the WEBM videos in that directory using HTML5 Video API.}
  gem.summary       = %q{In house media streaming server.}
  gem.homepage      = "https://github.com/abhishekkr/biscope"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
