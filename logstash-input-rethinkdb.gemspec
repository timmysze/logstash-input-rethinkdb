Gem::Specification.new do |s|
  s.name = 'logstash-input-rethinkdb'
  s.version         = '0.2.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "Streams changes from RethinkDB tables into LogStash."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["RethinkDB"]
  s.email = 'josh@rethinkdb.com'
  s.homepage = "http://www.rethinkdb.com/docs/logstash-plugins"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'rethinkdb', '~>2.0.0'
  s.add_runtime_dependency 'eventmachine', '~>1.0.7'
  s.add_development_dependency 'logstash-devutils'
end
