[![Gem Version](https://badge.fury.io/rb/rubocop-config-oharagroup.svg)](https://badge.fury.io/rb/rubocop-config-oharagroup)
[![Maintainability](https://qlty.sh/gh/scottohara/projects/rubocop-config-oharagroup/maintainability.svg)](https://qlty.sh/gh/scottohara/projects/rubocop-config-oharagroup)

# O'Hara Group Ruby style guide

## Usage

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

## Upgrading to new rubocop versions

1. Update the `spec.version` in `rubocop-config-oharagroup.gemspec`
2. Test the new gem version in a sibling Ruby project by appending `, path: '../rubocop-config-oharagroup'` to the entry in the projects' `Gemfile`
3. `cd <sibling Ruby project>`
4. `bundle exec rubocop`
5. For any new offenses, decide whether to correct the code, reconfigure the cop, or disable the cop
6. Tag & push (`git tag -am "Version X.Y.Z" vX.Y.Z && git push`)
7. Create a new GitHub release for the tag
8. Remove the `path: '../rubocop-config-oharagroup'` from the sibling projects `Gemfile`, and replace with the new version
9. Run `bundle install` to install the new version
