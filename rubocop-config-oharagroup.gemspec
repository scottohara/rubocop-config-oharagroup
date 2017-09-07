Gem::Specification.new do |spec|
  spec.name = 'rubocop-config-oharagroup'
  spec.version = '1.0.0'
  spec.summary = "O'Hara Group Ruby style guide"
  spec.description = "Rubocop shared configuration for all O'Hara Group ruby projects"
  spec.author = "Scott O'Hara"
  spec.email = 'scott@oharagroup.net'
  spec.homepage = 'https://github.com/scottohara/rubocop-config-oharagroup'
	spec.license = 'MIT'
	spec.files = [
		'lib/rubocop-config-oharagroup.rb',
		'LICENSE',
		'default.yml',
		'rails.yml'
	]
end