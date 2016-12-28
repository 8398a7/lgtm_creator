lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lgtm_creator/version'

Gem::Specification.new do |spec|
  spec.name          = 'lgtm_creator'
  spec.version       = LgtmCreator::VERSION
  spec.authors       = %w(839)
  spec.email         = %w(8398a7@gmail.com)

  spec.summary       = %(You can easily create LGTM image from gif animation.)
  spec.description   = %(You can easily create LGTM image from gif animation.)
  spec.homepage      = 'https://github.com/8398a7/lgtm_creator'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_dependency 'thor'
  spec.add_dependency 'rmagick'
end
