# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "citlunch/version"

Gem::Specification.new do |s|
  s.name        = "citlunch"
  s.version     = CITLunch::VERSION
  s.authors     = ["SAITO Jun"]
  s.email       = ["jsaito@xopowo.info"]
  s.homepage    = "https://github.com/st63jun/citlunch"
  s.summary     = %q{Wrapper library for lunch menu API of CIT cafeteria}
  s.description = %q{Gets menus of Chiba Institute of Technology's student cafeteria from CIT Lunch API (https://udon.upsilo.net/citlunch/)}

  s.rubyforge_project = "citlunch"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
