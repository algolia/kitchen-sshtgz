# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'kitchen/transport/sshtgz_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-sshtgz'
  spec.version       = Kitchen::Transport::SSHTGZ_VERSION
  spec.authors       = ['Jeremy Jacque']
  spec.email         = ['jeremyjacque@algolia.com']
  spec.description   = %q{Improved file transfers for test-kitchen (especially EC2) using tgz archives and SSH}
  spec.summary       = %q{Improved file transfers for test-kitchen}
  spec.homepage      = 'https://github.com/algolia/kitchen-sshtgz'
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{(^(\.[a-z]+))|(^(test|spec|features)/)}) }
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'test-kitchen',  '~> 2.5', '>= 2.5.4'
  spec.add_runtime_dependency 'net-ssh', '~> 6.1', '>= 6.1.0'
  spec.add_runtime_dependency 'net-scp', '~> 3.0', '>= 3.0.0'
  spec.add_runtime_dependency 'zlib', '~> 1.0'
  spec.add_runtime_dependency 'tempfile' , '~> 0.2.1'

  spec.add_development_dependency 'bundler', '~> 0'
  spec.add_development_dependency 'rake', '~> 0'
end
