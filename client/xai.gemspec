
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xai/version'

Gem::Specification.new do |spec|
  spec.name          = 'Xai'
  spec.version       = Xai::VERSION
  spec.authors       = ['Eclectic Labs', 'Peter Alcock']
  spec.email         = ['admin@10x.ai']

  spec.summary       = %q{10X.ai API client library}
  spec.description   = %q{https://10x,ai/}
  spec.homepage      = 'https://github.com/peteralcock/10X.AI'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  #spec.add_dependency 'savon', '~> 2.12'
  #spec.add_dependency 'activesupport', '> 4.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'vcr', '~> 4.0'
  spec.add_development_dependency 'webmock', '~> 3.4'
  spec.add_development_dependency 'pry', '~> 0.11'
end
