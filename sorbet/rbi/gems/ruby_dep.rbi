# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/ruby_dep/all/ruby_dep.rbi
#
# ruby_dep-1.5.0

module RubyDep
  def self.logger; end
  def self.logger=(new_logger); end
  def self.stderr_logger; end
end
class RubyDep::NullLogger
  def method_missing(method_name, *args, &block); end
  def respond_to_missing?(method_name, include_private = nil); end
end
class RubyDep::Logger
  def initialize(device, prefix); end
  def notice(msg); end
  def warning(msg); end
end
class RubyDep::RubyVersion
  def detect_status; end
  def engine; end
  def info; end
  def initialize(ruby_version, engine); end
  def recognized?; end
  def recommended(status); end
  def status; end
  def version; end
end
class RubyDep::Warning
  def buggy_alternatives; end
  def initialize; end
  def recommendation; end
  def recommendation_msg; end
  def recommended_versions; end
  def safer_alternatives_msg; end
  def show_warnings; end
  def silence!; end
  def silenced?; end
  def status; end
  def unrecognized_msg; end
  def warn_ruby(msg); end
end
class RubyDep::Travis
  def failable(yaml); end
  def lowest_minor_without_skipping(grouped_by_minor); end
  def lowest_supported(versions); end
  def supported_versions(yaml); end
  def version_constraint(filename = nil); end
  def versions_for_latest_major(versions); end
end
class RubyDep::Travis::RubyVersion
  def initialize(travis_version_string); end
  def jruby_version(version); end
  def segments; end
  def version_for(travis_version_string); end
end
class RubyDep::Travis::RubyVersion::Error < RuntimeError
end
class RubyDep::Travis::RubyVersion::Error::Unrecognized < RubyDep::Travis::RubyVersion::Error
  def initialize(invalid_version_string); end
  def message; end
end
class RubyDep::Travis::RubyVersion::Error::Unrecognized::JRubyVersion < RubyDep::Travis::RubyVersion::Error::Unrecognized
  def message; end
end
