O'Hara Group Ruby style guide
=============================

## Usage:

1. Add this gem to your `:development` and `:test` groups in your projects `Gemfile`, e.g.

```ruby
group :development, :test do
	gem 'rubocop', require: false
	gem 'rubocop-config-oharagroup', require: false
end
```

2. Install the bundle (`bundle install`)
3. Create a `.rubocop.yml` file in the root of your project as follows:

```yaml
inherit_gem:
	rubocop-config-oharagroup:
		- default.yml
		- rails.yml		# optional, only include for rails projects

# ------------------------------------------------------------
# Cops that rubocop disables by default, but we want to enable
# ------------------------------------------------------------

# ------------------------------------------------------------
# END disabled by default cops
# ------------------------------------------------------------
# Cops that rubocop enables by default, but we want to disable
# ------------------------------------------------------------

# ------------------------------------------------------------
# END enabled by default cops
# ------------------------------------------------------------
# Cops that we want to reconfigure
# ------------------------------------------------------------

# ------------------------------------------------------------
# END reconfigured cops
# ------------------------------------------------------------
```

## Upgrading to new rubocop versions:

1. Compare the cops listed in Rubocop's `config/disabled.yml` against the 'disabled by default' sections of `default.yml` and `rails.yml`
2. For any new cops, decide whether to enable (if not, add a comment to `default.yml` or `rails.yml` indicating why)
3. Update the `spec.version` in `rubocop-config-oharagroup.gemspec`
4. Rebuild the gem (`gem build rubocop-config-oharagroup.gemspec`)
5. Reinstall the gem locally (`gem install ./rubocop-config-oharagroup-${spec.version}.gem`)
6. Test the new gem version in a sibling Ruby project by appending `, path: '../rubocop-config-oharagroup'` to the entry in the projects' `Gemfile`
7. Tag the repo (`git tag -am "Version ${spec.version}" v${spec.version}`)
8. Push the changes & tag to origin (`git push && git push --tags`)
9. Publish the new version (`gem push rubocop-config-oharagroup-${spec.version}.gem`)