require_relative "lib/active_admin_aaa_theme/version"

Gem::Specification.new do |spec|
  spec.name          = "activeadmin-aaa-theme"
  spec.version       = ActiveAdminAaaTheme::VERSION
  spec.authors       = ["Fernando Paladini"]
  spec.email         = ["fpaladini@gmail.com"]

  spec.summary       = "An ultra-modern, lightweight Apple-inspired theme for Active Admin."
  spec.description   = "A premium responsive theme for Active Admin featuring rounded layouts, glassmorphism, native dark mode, HSL variables, and clean animations."
  spec.homepage      = "https://github.com/paladini/activeadmin-aaa-theme"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Include all code files, assets, and standard open-source documents in the gem packaging
  spec.files         = Dir["{app,lib}/**/*", "LICENSE", "README.md", "CONTRIBUTING.md", "CODE_OF_CONDUCT.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 6.1"
  spec.add_dependency "activeadmin", ">= 3.0"
end
