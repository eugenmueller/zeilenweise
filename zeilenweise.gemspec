require_relative 'lib/zeilenweise/version'

Gem::Specification.new do |spec|
  spec.name          = "zeilenweise"
  spec.version       = Zeilenweise::VERSION
  spec.authors       = ["Eugen Müller"]
  spec.email         = ["eugen.mueller@enermarket.de"]

  spec.summary       = %q{Automated spliting of messages into sutable chunks}
  spec.description   = %q{Sometimes we want to send a longer message as a sms or twitter message. In this case we have to splitt it into chunks. 'zeilenweise' do the work for us. }
  spec.homepage      = "https://www.eugen-mueller.netlify.app"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
end
