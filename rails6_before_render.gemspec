require File.expand_path('lib/before_render/version', __dir__)

Gem::Specification.new do |gem|
  gem.authors = %w[nilesh tknarr]
  gem.email         = ['mail@nilesh.org', 'tknarr@silverglass.org']
  gem.description   = 'provides a before_render method for action_controllers'
  gem.summary       = 'before_render will be called after your action and before the view is rendered'
  gem.homepage      = 'https://github.com/tknarr/before_render'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'rails6_before_render'
  gem.require_paths = ['lib']
  gem.version       = BeforeRender::VERSION
  gem.licenses      = ['MIT']

  gem.add_dependency 'activesupport', '< 8.0'
  gem.add_dependency 'rails', '< 8.0'

  gem.add_development_dependency 'minitest', '~> 5.0'
  gem.add_development_dependency 'rake', '~> 13.1'
end
