# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra-active-model-serializers/version'

Gem::Specification.new do |s|
  s.name        = 'sinatra-active-model-serializers'
  s.version     = SinatraActiveModelSerializers::VERSION
  s.description = 'Adapter from Active Model Serializers, to work in Sinatra from a more practical way with models'
  s.homepage    = 'https://github.com/SauloSilva/sinatra-active-model-serializers'
  s.summary     = 'Adapter from Active Model Serializers'

  s.license = 'MIT'

  # generated from git shortlog -sn
  s.authors = ['Saulo Santiago', 'Adriano Tadao']

  # generated from git shortlog -sne
  s.email = ['saulodasilvasantiago@gmail.com', 'drianotadao@gmail.com']

  # generated from git ls-files
  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.add_runtime_dependency 'sinatra', '>= 1.4'
  s.add_runtime_dependency 'sinatra-contrib', '>= 1.4.1'
  s.add_runtime_dependency 'activemodel', '>= 4.2.0'
  s.add_runtime_dependency 'active_model_serializers', '~> 0.10.0'

  s.add_development_dependency 'rake', '>= 10.0'
  s.add_development_dependency 'rspec', '>= 3.1.0'
  s.add_development_dependency 'json-schema', '>= 2.5.0'
  s.add_development_dependency 'coveralls', '>= 0.8.2'
end
