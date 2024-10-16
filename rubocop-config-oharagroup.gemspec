Gem::Specification.new do |spec|
  spec.name = 'rubocop-config-oharagroup'
  spec.version = '2.5.0'
  spec.summary = "O'Hara Group Ruby style guide"
  spec.description = "Rubocop shared configuration for all O'Hara Group ruby projects"
  spec.author = "Scott O'Hara"
  spec.email = 'scott@oharagroup.net'
  spec.homepage = 'https://github.com/scottohara/rubocop-config-oharagroup'
	spec.license = 'MIT'
	spec.required_ruby_version = '>= 3.3.1'
	spec.files = [
		'lib/rubocop-config-oharagroup.rb',
		'LICENSE',
		'default.yml',
		'factory_bot.yml',
		'performance.yml',
		'rails.yml',
		'rake.yml',
		'rspec_rails.yml',
		'rspec.yml'
	]
end