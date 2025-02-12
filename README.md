[![Gem Version](https://badge.fury.io/rb/rubocop-config-oharagroup.svg)](https://badge.fury.io/rb/rubocop-config-oharagroup)

# O'Hara Group Ruby style guide

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
    - rails.yml # optional, only include for rails projects

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

1. Update the `spec.version` in `rubocop-config-oharagroup.gemspec`
2. Test the new gem version in a sibling Ruby project by appending `, path: '../rubocop-config-oharagroup'` to the entry in the projects' `Gemfile`
3. `cd <sibling Ruby project>`
4. `bundle exec rubocop`
5. For any new offenses, decide whether to correct the code, reconfigure the cop, or disable the cop
6. Rebuild the gem (`gem build rubocop-config-oharagroup.gemspec`)
7. Tag the repo (`git tag -am "Version ${spec.version}" v${spec.version}`)
8. Push the changes & tag to origin (`git push && git push --tags`)
9. Publish the new version (`op run -- gem push --otp $(op item get RubyGems --otp) rubocop-config-oharagroup-${spec.version}.gem`)

Publishing uses the `$GEM_HOST_API_KEY` environment variable. To setup a new computer:

```bash
echo export GEM_HOST_API_KEY="op://private/rubygems/oharagroup-push-key" > ~./localrc
```
