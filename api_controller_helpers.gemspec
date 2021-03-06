require 'date'

module ApiControllerHelpers
  VERSION = File.read(File.expand_path('../VERSION', __FILE__)).strip
end

Gem::Specification.new do |gem|
  gem.name        = 'api_controller_helpers'
  gem.version     = ApiControllerHelpers::VERSION
  gem.date        = Date.today.strftime('%Y-%m-%d')
  gem.summary     = 'Controller helper methods useful for building Rails JSON-based APIs.'
  gem.author      = ['Kevin Rood']
  gem.files       = `git ls-files LICENSE readme.md *.rb`.split($/)
  gem.homepage    = 'https://github.com/kevinrood/api_controller_helpers'
  gem.license     = 'Apache-2.0'

  gem.add_runtime_dependency('rails', '~> 5.0')
end
