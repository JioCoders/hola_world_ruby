
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jio_hola_world/version"

Gem::Specification.new do |spec|
  spec.name          = "jio_hola_world"
  spec.version       = JioHolaWorld::VERSION
  spec.authors       = ["JioCoders"]
  spec.email         = ["jiocoders@gmail.com"]

  spec.summary       = "A simple greetings gem example."
  spec.description   = "This gem provides a simple Spanish greeting method."
  spec.homepage      = "https://github.com/JioCoders/hola_world_ruby"
  spec.license       = "MIT"

  # ... (metadata and file listing config as seen in original code)
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  # Locate your spec.files definition block and update it to look like this:
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/}) || f.end_with?('.gem')
  end
end