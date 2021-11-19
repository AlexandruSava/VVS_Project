The main code static analyzer for ruby on rails is rubocop.
This gem can also auto-correct most of the small issues it founds.
The following input was the first run of command rubocop.

alex@DESKTOP-APL5503:~/projects/vvs_project$ rubocop
Inspecting 66 files
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCWCCCCCCCCCCCC

Offenses:

Gemfile:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
source 'https://rubygems.org'
^
Gemfile:41:28: C: [Correctable] Style/SymbolArray: Use %i or %I for an array of symbols.
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
                           ^^^^^^^^^^^^^^^^^^^^^^^^^^
Gemfile:71:31: C: [Correctable] Style/SymbolArray: Use %i or %I for an array of symbols.
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Rakefile:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Add your own tasks in files placed in lib/tasks ending in .rake,
^
Rakefile:4:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require_relative "config/application"
                 ^^^^^^^^^^^^^^^^^^^^
app/channels/application_cable/channel.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
module ApplicationCable
^
app/channels/application_cable/connection.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
module ApplicationCable
^
app/controllers/application_controller.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class ApplicationController < ActionController::Base
^
app/controllers/offers_controller.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for class OffersController.
class OffersController < ApplicationController
^^^^^^^^^^^^^^^^^^^^^^
app/controllers/offers_controller.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class OffersController < ApplicationController
^
app/controllers/offers_controller.rb:3:38: C: [Correctable] Layout/SpaceInsidePercentLiteralDelimiters: Do not use spaces inside percent literal delimiters.
  before_action :set_offer, only: %i[ show edit update destroy ]
                                     ^
app/controllers/offers_controller.rb:3:63: C: [Correctable] Layout/SpaceInsidePercentLiteralDelimiters: Do not use spaces inside percent literal delimiters.
  before_action :set_offer, only: %i[ show edit update destroy ]
                                                              ^
app/controllers/offers_controller.rb:11:3: C: [Correctable] Style/EmptyMethod: Put empty method definitions on a single line.
  def show ...
  ^^^^^^^^
app/controllers/offers_controller.rb:20:3: C: [Correctable] Style/EmptyMethod: Put empty method definitions on a single line.
  def edit ...
  ^^^^^^^^
app/controllers/offers_controller.rb:29:51: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
        format.html { redirect_to @offer, notice: "Offer was successfully created." }
                                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
app/controllers/offers_controller.rb:42:51: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
        format.html { redirect_to @offer, notice: "Offer was successfully updated." }
                                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
app/controllers/offers_controller.rb:55:53: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      format.html { redirect_to offers_url, notice: "Offer was successfully destroyed." }
                                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
app/controllers/offers_controller.rb:60:3: C: [Correctable] Layout/EmptyLinesAroundAccessModifier: Keep a blank line before and after private.
  private
  ^^^^^^^
app/controllers/offers_controller.rb:62:1: C: [Correctable] Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.
    def set_offer
^^^^
app/controllers/offers_controller.rb:62:5: C: [Correctable] Layout/IndentationConsistency: Inconsistent indentation detected.
    def set_offer ...
    ^^^^^^^^^^^^^
app/controllers/offers_controller.rb:67:1: C: [Correctable] Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.
    def offer_params
^^^^
app/controllers/offers_controller.rb:67:5: C: [Correctable] Layout/IndentationConsistency: Inconsistent indentation detected.
    def offer_params ...
    ^^^^^^^^^^^^^^^^
app/controllers/offers_controller.rb:68:121: C: [Correctable] Layout/LineLength: Line is too long. [197/120]
      params.require(:offer).permit(:name, :description, :phone, :email, :country, :location, :meals, :price, :stars, :rating, :cleaning, :food, :staff, :confort, :host_name, :minimum_stay, :image)
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
app/controllers/pages_controller.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for class PagesController.
class PagesController < ApplicationController
^^^^^^^^^^^^^^^^^^^^^
app/controllers/pages_controller.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class PagesController < ApplicationController
^
app/controllers/pages_controller.rb:2:3: C: [Correctable] Style/EmptyMethod: Put empty method definitions on a single line.
  def contact ...
  ^^^^^^^^^^^
app/helpers/application_helper.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for module ApplicationHelper.
module ApplicationHelper
^^^^^^^^^^^^^^^^^^^^^^^^
app/helpers/application_helper.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
module ApplicationHelper
^
app/helpers/offers_helper.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for module OffersHelper.
module OffersHelper
^^^^^^^^^^^^^^^^^^^
app/helpers/offers_helper.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
module OffersHelper
^
app/helpers/pages_helper.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for module PagesHelper.
module PagesHelper
^^^^^^^^^^^^^^^^^^
app/helpers/pages_helper.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
module PagesHelper
^
app/jobs/application_job.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class ApplicationJob < ActiveJob::Base
^
app/mailers/application_mailer.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class ApplicationMailer < ActionMailer::Base
^
app/models/application_record.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for class ApplicationRecord.
class ApplicationRecord < ActiveRecord::Base
^^^^^^^^^^^^^^^^^^^^^^^
app/models/application_record.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class ApplicationRecord < ActiveRecord::Base
^
app/models/offer.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for class Offer.
class Offer < ApplicationRecord
^^^^^^^^^^^
app/models/offer.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class Offer < ApplicationRecord
^
app/models/offer.rb:2:28: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  has_one_attached :image, :dependent => :destroy
                           ^^^^^^^^^^^^^
app/models/offer.rb:12:37: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
                                    ^^^^^^^^^^^^^^^^
app/models/offer.rb:12:56: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
                                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
app/models/offer.rb:13:37: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :stars, presence: true, :inclusion => 1..5
                                    ^^^^^^^^^^^^^
app/models/offer.rb:14:40: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :cleaning, presence: true, :inclusion => 0..100
                                       ^^^^^^^^^^^^^
app/models/offer.rb:15:36: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :food, presence: true, :inclusion => 0..100
                                   ^^^^^^^^^^^^^
app/models/offer.rb:16:37: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :staff, presence: true, :inclusion => 0..100
                                    ^^^^^^^^^^^^^
app/models/offer.rb:17:39: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :confort, presence: true, :inclusion => 0..100
                                      ^^^^^^^^^^^^^
app/models/offer.rb:18:44: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :minimum_stay, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
                                           ^^^^^^^^^^^^^^^^
app/models/offer.rb:18:63: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  validates :minimum_stay, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
                                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
app/models/offer.rb:23:1: C: [Correctable] Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body end.
app/models/user.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class User < ApplicationRecord
^
app/views/offers/_offer.json.jbuilder:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
json.extract! offer, :id, :name, :description, :phone, :email, :country, :location, :meals, :price, :stars, :rating, :cleaning, :food, :staff, :confort, :host_name, :minimum_stay, :created_at, :updated_at
^
app/views/offers/_offer.json.jbuilder:1:121: C: [Correctable] Layout/LineLength: Line is too long. [204/120]
json.extract! offer, :id, :name, :description, :phone, :email, :country, :location, :meals, :price, :stars, :rating, :cleaning, :food, :staff, :confort, :host_name, :minimum_stay, :created_at, :updated_at
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
app/views/offers/index.json.jbuilder:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
json.array! @offers, partial: "offers/offer", as: :offer
^
app/views/offers/index.json.jbuilder:1:31: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
json.array! @offers, partial: "offers/offer", as: :offer
                              ^^^^^^^^^^^^^^
app/views/offers/show.json.jbuilder:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
json.partial! "offers/offer", offer: @offer
^
app/views/offers/show.json.jbuilder:1:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
json.partial! "offers/offer", offer: @offer
              ^^^^^^^^^^^^^^
bin/bundle:11:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "rubygems"
        ^^^^^^^^^^
bin/bundle:17:22: C: [Correctable] Style/SpecialGlobalVars: Prefer $PROGRAM_NAME over $0.
    File.expand_path($0) == File.expand_path(__FILE__)
                     ^^
bin/bundle:21:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    ENV["BUNDLER_VERSION"]
        ^^^^^^^^^^^^^^^^^
bin/bundle:24:3: C: Metrics/CyclomaticComplexity: Cyclomatic complexity for cli_arg_version is too high. [9/7]
  def cli_arg_version ...
  ^^^^^^^^^^^^^^^^^^^
bin/bundle:24:3: C: Metrics/MethodLength: Method has too many lines. [13/10]
  def cli_arg_version ...
  ^^^^^^^^^^^^^^^^^^^
bin/bundle:24:3: C: Metrics/PerceivedComplexity: Perceived complexity for cli_arg_version is too high. [9/8]
  def cli_arg_version ...
  ^^^^^^^^^^^^^^^^^^^
bin/bundle:26:5: C: [Correctable] Layout/EmptyLineAfterGuardClause: Add empty line after guard clause.
    return unless "update".start_with?(ARGV.first || " ") # must be running `bundle update`
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/bundle:26:19: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    return unless "update".start_with?(ARGV.first || " ") # must be running `bundle update`
                  ^^^^^^^^
bin/bundle:26:54: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    return unless "update".start_with?(ARGV.first || " ") # must be running `bundle update`
                                                     ^^^
bin/bundle:30:7: C: [Correctable] Style/IfUnlessModifier: Favor modifier if usage when having a single-line body. Another good alternative is the usage of control flow &&/||.
      if update_index && update_index.succ == i && a =~ Gem::Version::ANCHORED_VERSION_PATTERN
      ^^
bin/bundle:33:7: C: [Correctable] Layout/EmptyLineAfterGuardClause: Add empty line after guard clause.
      next unless a =~ /\A--bundler(?:[= ](#{Gem::Version::VERSION_PATTERN}))?\z/
      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/bundle:34:25: C: [Correctable] Style/PerlBackrefs: Prefer Regexp.last_match(1) over $1.
      bundler_version = $1
                        ^^
bin/bundle:41:19: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    gemfile = ENV["BUNDLE_GEMFILE"]
                  ^^^^^^^^^^^^^^^^
bin/bundle:44:10: C: [Correctable] Style/ExpandPathArguments: Use expand_path('../Gemfile', __dir__) instead of expand_path('../../Gemfile', __FILE__).
    File.expand_path("../../Gemfile", __FILE__)
         ^^^^^^^^^^^
bin/bundle:44:22: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    File.expand_path("../../Gemfile", __FILE__)
                     ^^^^^^^^^^^^^^^
bin/bundle:50:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      when "gems.rb" then gemfile.sub(/\.rb$/, gemfile)
           ^^^^^^^^^
bin/bundle:57:5: C: [Correctable] Layout/EmptyLineAfterGuardClause: Add empty line after guard clause.
    return unless File.file?(lockfile)
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/bundle:59:5: C: [Correctable] Layout/EmptyLineAfterGuardClause: Add empty line after guard clause.
    return unless lockfile_contents =~ /\n\nBUNDLED WITH\n\s{2,}(#{Gem::Version::VERSION_PATTERN})\n/
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/bundle:66:9: C: [Correctable] Layout/MultilineOperationIndentation: Align the operands of an expression in an assignment spanning multiple lines.
        bundler_requirement_for(lockfile_version)
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/bundle:76:81: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    return requirement unless Gem::Version.new(Gem::VERSION) < Gem::Version.new("2.7.0")
                                                                                ^^^^^^^
bin/bundle:78:20: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    requirement += ".a" if bundler_gem_version.prerelease?
                   ^^^^
bin/bundle:84:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    ENV["BUNDLE_GEMFILE"] ||= gemfile
        ^^^^^^^^^^^^^^^^
bin/bundle:91:11: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      gem "bundler", bundler_requirement
          ^^^^^^^^^
bin/bundle:93:5: C: [Correctable] Layout/EmptyLineAfterGuardClause: Add empty line after guard clause.
    return if gem_error.nil?
    ^^^^^^^^^^^^^^^^^^^^^^^^
bin/bundle:95:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      require "bundler/version"
              ^^^^^^^^^^^^^^^^^
bin/bundle:97:5: C: [Correctable] Layout/EmptyLineAfterGuardClause: Add empty line after guard clause.
    return if require_error.nil? && Gem::Requirement.new(bundler_requirement).satisfied_by?(Gem::Version.new(Bundler::VERSION))
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/bundle:97:12: C: [Correctable] Style/IfUnlessModifier: Modifier form of if makes the line too long.
    return if require_error.nil? && Gem::Requirement.new(bundler_requirement).satisfied_by?(Gem::Version.new(Bundler::VERSION))
           ^^
bin/bundle:97:121: C: Layout/LineLength: Line is too long. [127/120]
    return if require_error.nil? && Gem::Requirement.new(bundler_requirement).satisfied_by?(Gem::Version.new(Bundler::VERSION))
                                                                                                                        ^^^^^^^
bin/bundle:98:121: C: Layout/LineLength: Line is too long. [198/120]
    warn "Activating bundler (#{bundler_requirement}) failed:\n#{gem_error.message}\n\nTo install the version of bundler this project requires, run `gem install bundler -v '#{bundler_requirement}'`"
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/bundle:112:1: C: [Correctable] Style/IfUnlessModifier: Favor modifier if usage when having a single-line body. Another good alternative is the usage of control flow &&/||.
if m.invoked_as_script?
^^
bin/bundle:113:21: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  load Gem.bin_path("bundler", "bundle")
                    ^^^^^^^^^
bin/bundle:113:32: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  load Gem.bin_path("bundler", "bundle")
                               ^^^^^^^^
bin/rails:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/usr/bin/env ruby
^
bin/rails:2:23: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
load File.expand_path("spring", __dir__)
                      ^^^^^^^^
bin/rails:4:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require_relative "../config/boot"
                 ^^^^^^^^^^^^^^^^
bin/rails:5:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "rails/commands"
        ^^^^^^^^^^^^^^^^
bin/rake:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/usr/bin/env ruby
^
bin/rake:2:23: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
load File.expand_path("spring", __dir__)
                      ^^^^^^^^
bin/rake:3:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require_relative "../config/boot"
                 ^^^^^^^^^^^^^^^^
bin/rake:4:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "rake"
        ^^^^^^
bin/setup:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/usr/bin/env ruby
^
bin/setup:2:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "fileutils"
        ^^^^^^^^^^^
bin/spring:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/usr/bin/env ruby
^
bin/spring:2:31: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
if !defined?(Spring) && [nil, "development", "test"].include?(ENV["RAILS_ENV"])
                              ^^^^^^^^^^^^^
bin/spring:2:46: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
if !defined?(Spring) && [nil, "development", "test"].include?(ENV["RAILS_ENV"])
                                             ^^^^^^
bin/spring:2:67: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
if !defined?(Spring) && [nil, "development", "test"].include?(ENV["RAILS_ENV"])
                                                                  ^^^^^^^^^^^
bin/spring:3:7: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  gem "bundler"
      ^^^^^^^^^
bin/spring:4:11: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  require "bundler"
          ^^^^^^^^^
bin/spring:7:58: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  Bundler.locked_gems&.specs&.find { |spec| spec.name == "spring" }&.tap do |spring|
                                                         ^^^^^^^^
bin/spring:9:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    gem "spring", spring.version
        ^^^^^^^^
bin/spring:10:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    require "spring/binstub"
            ^^^^^^^^^^^^^^^^
bin/webpack:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/usr/bin/env ruby
^
bin/webpack:3:5: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["RAILS_ENV"] ||= ENV["RACK_ENV"] || "development"
    ^^^^^^^^^^^
bin/webpack:3:26: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["RAILS_ENV"] ||= ENV["RACK_ENV"] || "development"
                         ^^^^^^^^^^
bin/webpack:3:41: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["RAILS_ENV"] ||= ENV["RACK_ENV"] || "development"
                                        ^^^^^^^^^^^^^
bin/webpack:4:5: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["NODE_ENV"]  ||= "development"
    ^^^^^^^^^^
bin/webpack:4:22: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["NODE_ENV"]  ||= "development"
                     ^^^^^^^^^^^^^
bin/webpack:6:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "pathname"
        ^^^^^^^^^^
bin/webpack:7:5: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile",
    ^^^^^^^^^^^^^^^^
bin/webpack:7:44: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile",
                                           ^^^^^^^^^^^^^^^
bin/webpack:8:3: C: [Correctable] Layout/ArgumentAlignment: Align the arguments of a method call if they span more than one line.
  Pathname.new(__FILE__).realpath)
  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/webpack:10:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "bundler/setup"
        ^^^^^^^^^^^^^^^
bin/webpack:12:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "webpacker"
        ^^^^^^^^^^^
bin/webpack:13:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "webpacker/webpack_runner"
        ^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/webpack:15:29: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
APP_ROOT = File.expand_path("..", __dir__)
                            ^^^^
bin/webpack-dev-server:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/usr/bin/env ruby
^
bin/webpack-dev-server:3:5: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["RAILS_ENV"] ||= ENV["RACK_ENV"] || "development"
    ^^^^^^^^^^^
bin/webpack-dev-server:3:26: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["RAILS_ENV"] ||= ENV["RACK_ENV"] || "development"
                         ^^^^^^^^^^
bin/webpack-dev-server:3:41: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["RAILS_ENV"] ||= ENV["RACK_ENV"] || "development"
                                        ^^^^^^^^^^^^^
bin/webpack-dev-server:4:5: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["NODE_ENV"]  ||= "development"
    ^^^^^^^^^^
bin/webpack-dev-server:4:22: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["NODE_ENV"]  ||= "development"
                     ^^^^^^^^^^^^^
bin/webpack-dev-server:6:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "pathname"
        ^^^^^^^^^^
bin/webpack-dev-server:7:5: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile",
    ^^^^^^^^^^^^^^^^
bin/webpack-dev-server:7:44: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile",
                                           ^^^^^^^^^^^^^^^
bin/webpack-dev-server:8:3: C: [Correctable] Layout/ArgumentAlignment: Align the arguments of a method call if they span more than one line.
  Pathname.new(__FILE__).realpath)
  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/webpack-dev-server:10:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "bundler/setup"
        ^^^^^^^^^^^^^^^
bin/webpack-dev-server:12:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "webpacker"
        ^^^^^^^^^^^
bin/webpack-dev-server:13:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "webpacker/dev_server_runner"
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/webpack-dev-server:15:29: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
APP_ROOT = File.expand_path("..", __dir__)
                            ^^^^
bin/yarn:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/usr/bin/env ruby
^
bin/yarn:4:10: C: [Correctable] Style/InverseMethods: Use reject instead of inverting select.
  yarn = ENV["PATH"].split(File::PATH_SEPARATOR). ...
         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/yarn:4:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  yarn = ENV["PATH"].split(File::PATH_SEPARATOR).
             ^^^^^^
bin/yarn:4:49: C: [Correctable] Layout/DotPosition: Place the . on the next line, together with the method name.
  yarn = ENV["PATH"].split(File::PATH_SEPARATOR).
                                                ^
bin/yarn:5:5: C: [Correctable] Layout/MultilineMethodCallIndentation: Align select with ENV["PATH"].split(File::PATH_SEPARATOR). on line 4.
    select { |dir| File.expand_path(dir) != __dir__ }.
    ^^^^^^
bin/yarn:5:54: C: [Correctable] Layout/DotPosition: Place the . on the next line, together with the method name.
    select { |dir| File.expand_path(dir) != __dir__ }.
                                                     ^
bin/yarn:6:5: C: [Correctable] Layout/MultilineMethodCallIndentation: Align product with ENV["PATH"].split(File::PATH_SEPARATOR). on line 4.
    product(["yarn", "yarn.cmd", "yarn.ps1"]).
    ^^^^^^^
bin/yarn:6:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    product(["yarn", "yarn.cmd", "yarn.ps1"]).
             ^^^^^^
bin/yarn:6:22: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    product(["yarn", "yarn.cmd", "yarn.ps1"]).
                     ^^^^^^^^^^
bin/yarn:6:34: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    product(["yarn", "yarn.cmd", "yarn.ps1"]).
                                 ^^^^^^^^^^
bin/yarn:6:46: C: [Correctable] Layout/DotPosition: Place the . on the next line, together with the method name.
    product(["yarn", "yarn.cmd", "yarn.ps1"]).
                                             ^
bin/yarn:7:5: C: [Correctable] Layout/MultilineMethodCallIndentation: Align map with ENV["PATH"].split(File::PATH_SEPARATOR). on line 4.
    map { |dir, file| File.expand_path(file, dir) }.
    ^^^
bin/yarn:7:52: C: [Correctable] Layout/DotPosition: Place the . on the next line, together with the method name.
    map { |dir, file| File.expand_path(file, dir) }.
                                                   ^
bin/yarn:8:5: C: [Correctable] Layout/MultilineMethodCallIndentation: Align find with ENV["PATH"].split(File::PATH_SEPARATOR). on line 4.
    find { |file| File.executable?(file) }
    ^^^^
bin/yarn:13:5: C: [Correctable] Style/StderrPuts: Use warn instead of $stderr.puts to allow such output to be disabled.
    $stderr.puts "Yarn executable was not detected in the system."
    ^^^^^^^^^^^^
bin/yarn:13:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    $stderr.puts "Yarn executable was not detected in the system."
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bin/yarn:14:5: C: [Correctable] Style/StderrPuts: Use warn instead of $stderr.puts to allow such output to be disabled.
    $stderr.puts "Download Yarn at https://yarnpkg.com/en/docs/install"
    ^^^^^^^^^^^^
bin/yarn:14:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    $stderr.puts "Download Yarn at https://yarnpkg.com/en/docs/install"
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
config.ru:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# This file is used by Rack-based servers to start the application.
^
config.ru:3:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require_relative "config/environment"
                 ^^^^^^^^^^^^^^^^^^^^
config/application.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require_relative "boot"
^
config/application.rb:1:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require_relative "boot"
                 ^^^^^^
config/application.rb:3:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "rails/all"
        ^^^^^^^^^^^
config/application.rb:10:3: C: Style/Documentation: Missing top-level documentation comment for class VvsProject::Application.
  class Application < Rails::Application
  ^^^^^^^^^^^^^^^^^
config/boot.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
^
config/boot.rb:3:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "bundler/setup" # Set up gems listed in the Gemfile.
        ^^^^^^^^^^^^^^^
config/boot.rb:4:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.
        ^^^^^^^^^^^^^^^^
config/environment.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Load the Rails application.
^
config/environment.rb:2:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require_relative "application"
                 ^^^^^^^^^^^^^
config/environments/development.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "active_support/core_ext/integer/time"
^
config/environments/development.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "active_support/core_ext/integer/time"
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
config/environments/production.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "active_support/core_ext/integer/time"
^
config/environments/production.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "active_support/core_ext/integer/time"
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
config/environments/production.rb:56:22: C: [Correctable] Layout/SpaceInsideArrayLiteralBrackets: Do not use space inside array brackets.
  config.log_tags = [ :request_id ]
                     ^
config/environments/production.rb:56:34: C: Layout/SpaceInsideArrayLiteralBrackets: Do not use space inside array brackets.
  config.log_tags = [ :request_id ]
                                 ^
config/environments/production.rb:91:10: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  if ENV["RAILS_LOG_TO_STDOUT"].present?
         ^^^^^^^^^^^^^^^^^^^^^
config/environments/production.rb:92:50: C: [Correctable] Style/GlobalStdStream: Use $stdout instead of STDOUT.
    logger           = ActiveSupport::Logger.new(STDOUT)
                                                 ^^^^^^
config/environments/test.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "active_support/core_ext/integer/time"
^
config/environments/test.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "active_support/core_ext/integer/time"
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
config/initializers/application_controller_renderer.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/initializers/assets.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/initializers/backtrace_silencers.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/initializers/backtrace_silencers.rb:8:50: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
Rails.backtrace_cleaner.remove_silencers! if ENV["BACKTRACE"]
                                                 ^^^^^^^^^^^
config/initializers/content_security_policy.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/initializers/cookies_serializer.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/initializers/devise.rb:17:121: C: Layout/LineLength: Line is too long. [154/120]
  # config.secret_key = '565181d481a6e04be4d8ccbcaf450f67b1d05596dd73ad49991b0a0824d0ec83e962068ad3b0bc3199fb3c51b8da1755c47c7c6dba7fec3ef4e88f7228baabf4'
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
config/initializers/devise.rb:129:121: C: Layout/LineLength: Line is too long. [150/120]
  # config.pepper = 'de85462c2f2edbdf991c7a5f671b29d46023c6444e6b38cc0144f5910234e8df2a1b997ce6e17bebea0e326a93ba13347da7c98ca3d0a832429c68fa82eee82e'
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
config/initializers/filter_parameter_logging.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/initializers/filter_parameter_logging.rb:4:47: C: [Correctable] Style/SymbolArray: Use %i or %I for an array of symbols.
Rails.application.config.filter_parameters += [ ...
                                              ^
config/initializers/inflections.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/initializers/mime_types.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/initializers/permissions_policy.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Define an application-wide HTTP permissions policy. For further
^
config/initializers/wrap_parameters.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Be sure to restart your server when you modify this file.
^
config/puma.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Puma can serve each request in a thread from an internal thread pool.
^
config/puma.rb:7:25: C: [Correctable] Style/RedundantFetchBlock: Use fetch("RAILS_MAX_THREADS", 5) instead of fetch("RAILS_MAX_THREADS") { 5 }.
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
config/puma.rb:7:31: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
                              ^^^^^^^^^^^^^^^^^^^
config/puma.rb:8:31: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
                              ^^^^^^^^^^^^^^^^^^^
config/puma.rb:14:34: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"
                                 ^^^^^^^^^^^
config/puma.rb:14:47: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"
                                              ^^^^^^^^^^^^^
config/puma.rb:14:65: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"
                                                                ^^^^^^^^^^^^^
config/puma.rb:18:10: C: [Correctable] Style/RedundantFetchBlock: Use fetch("PORT", 3000) instead of fetch("PORT") { 3000 }.
port ENV.fetch("PORT") { 3000 }
         ^^^^^^^^^^^^^^^^^^^^^^
config/puma.rb:18:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
port ENV.fetch("PORT") { 3000 }
               ^^^^^^
config/puma.rb:22:23: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
environment ENV.fetch("RAILS_ENV") { "development" }
                      ^^^^^^^^^^^
config/puma.rb:22:38: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
environment ENV.fetch("RAILS_ENV") { "development" }
                                     ^^^^^^^^^^^^^
config/puma.rb:25:19: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }
                  ^^^^^^^^^
config/puma.rb:25:32: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }
                               ^^^^^^^^^^^^^^^^^^^^^
config/routes.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
Rails.application.routes.draw do
^
config/routes.rb:2:22: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  devise_for :users, :path => '', :path_names => {
                     ^^^^^^^^
config/routes.rb:2:35: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
  devise_for :users, :path => '', :path_names => {
                                  ^^^^^^^^^^^^^^
config/routes.rb:3:5: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
    :sign_in => "login",
    ^^^^^^^^^^^
config/routes.rb:3:17: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    :sign_in => "login",
                ^^^^^^^
config/routes.rb:4:5: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
    :sign_out => "logout",
    ^^^^^^^^^^^^
config/routes.rb:4:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    :sign_out => "logout",
                 ^^^^^^^^
config/routes.rb:5:5: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
    :sign_up => "register"
    ^^^^^^^^^^^
config/routes.rb:5:17: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    :sign_up => "register"
                ^^^^^^^^^^
config/spring.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
Spring.watch(
^
config/spring.rb:2:3: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  ".ruby-version",
  ^^^^^^^^^^^^^^^
config/spring.rb:3:3: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  ".rbenv-vars",
  ^^^^^^^^^^^^^
config/spring.rb:4:3: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  "tmp/restart.txt",
  ^^^^^^^^^^^^^^^^^
config/spring.rb:5:3: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  "tmp/caching-dev.txt"
  ^^^^^^^^^^^^^^^^^^^^^
db/migrate/20211013210200_create_offers.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for class CreateOffers.
class CreateOffers < ActiveRecord::Migration[6.1]
^^^^^^^^^^^^^^^^^^
db/migrate/20211013210200_create_offers.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class CreateOffers < ActiveRecord::Migration[6.1]
^
db/migrate/20211013210200_create_offers.rb:2:3: C: Metrics/AbcSize: Assignment Branch Condition size for change is too high. [<1, 18, 0> 18.03/17]
  def change ...
  ^^^^^^^^^^
db/migrate/20211013210200_create_offers.rb:2:3: C: Metrics/MethodLength: Method has too many lines. [19/10]
  def change ...
  ^^^^^^^^^^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# This migration comes from active_storage (originally 20170806125915)
^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:3:3: C: Metrics/AbcSize: Assignment Branch Condition size for change is too high. [<3, 22, 0> 22.2/17]
  def change ...
  ^^^^^^^^^^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:3:3: C: Metrics/MethodLength: Method has too many lines. [25/10]
  def change ...
  ^^^^^^^^^^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:14:16: C: [Correctable] Layout/SpaceInsideArrayLiteralBrackets: Do not use space inside array brackets.
      t.index [ :key ], unique: true
               ^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:14:21: C: Layout/SpaceInsideArrayLiteralBrackets: Do not use space inside array brackets.
      t.index [ :key ], unique: true
                    ^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:24:15: C: [Correctable] Style/SymbolArray: Use %i or %I for an array of symbols.
      t.index [ :record_type, :record_id, :name, :blob_id ], name: "index_active_storage_attachments_uniqueness", unique: true
              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:24:16: C: [Correctable] Layout/SpaceInsideArrayLiteralBrackets: Do not use space inside array brackets.
      t.index [ :record_type, :record_id, :name, :blob_id ], name: "index_active_storage_attachments_uniqueness", unique: true
               ^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:24:58: C: Layout/SpaceInsideArrayLiteralBrackets: Do not use space inside array brackets.
      t.index [ :record_type, :record_id, :name, :blob_id ], name: "index_active_storage_attachments_uniqueness", unique: true
                                                         ^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:24:68: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      t.index [ :record_type, :record_id, :name, :blob_id ], name: "index_active_storage_attachments_uniqueness", unique: true
                                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:24:121: C: [Correctable] Layout/LineLength: Line is too long. [126/120]
      t.index [ :record_type, :record_id, :name, :blob_id ], name: "index_active_storage_attachments_uniqueness", unique: true
                                                                                                                        ^^^^^^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:32:18: C: [Correctable] Layout/SpaceInsidePercentLiteralDelimiters: Do not use spaces inside percent literal delimiters.
      t.index %i[ blob_id variation_digest ], name: "index_active_storage_variant_records_uniqueness", unique: true
                 ^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:32:43: C: [Correctable] Layout/SpaceInsidePercentLiteralDelimiters: Do not use spaces inside percent literal delimiters.
      t.index %i[ blob_id variation_digest ], name: "index_active_storage_variant_records_uniqueness", unique: true
                                          ^
db/migrate/20211013212046_create_active_storage_tables.active_storage.rb:32:53: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      t.index %i[ blob_id variation_digest ], name: "index_active_storage_variant_records_uniqueness", unique: true
                                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/migrate/20211023203950_devise_create_users.rb:3:1: C: Style/Documentation: Missing top-level documentation comment for class DeviseCreateUsers.
class DeviseCreateUsers < ActiveRecord::Migration[6.1]
^^^^^^^^^^^^^^^^^^^^^^^
db/migrate/20211023203950_devise_create_users.rb:7:59: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      t.string :email,              null: false, default: ""
                                                          ^^
db/migrate/20211023203950_devise_create_users.rb:8:59: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      t.string :encrypted_password, null: false, default: ""
                                                          ^^
db/migrate/20211023203950_devise_create_users.rb:35:1: C: [Correctable] Layout/EmptyLines: Extra blank line detected.
db/schema.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# This file is auto-generated from the current state of the database. Instead
^
db/schema.rb:13:1: C: Metrics/BlockLength: Block has too many lines. [59/25]
ActiveRecord::Schema.define(version: 2021_10_23_203950) do ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:13:38: C: [Correctable] Style/NumericLiterals: Use underscores(_) as thousands separator and separate every 3 digits with them.
ActiveRecord::Schema.define(version: 2021_10_23_203950) do
                                     ^^^^^^^^^^^^^^^^^
db/schema.rb:14:1: C: [Correctable] Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body beginning.
db/schema.rb:16:20: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  enable_extension "plpgsql"
                   ^^^^^^^^^
db/schema.rb:18:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  create_table "active_storage_attachments", force: :cascade do |t|
               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:19:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "name", null: false
             ^^^^^^
db/schema.rb:20:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "record_type", null: false
             ^^^^^^^^^^^^^
db/schema.rb:21:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.bigint "record_id", null: false
             ^^^^^^^^^^^
db/schema.rb:22:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.bigint "blob_id", null: false
             ^^^^^^^^^
db/schema.rb:23:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.datetime "created_at", null: false
               ^^^^^^^^^^^^
db/schema.rb:24:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
             ^^^^^^^^^
db/schema.rb:24:32: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:25:13: C: [Correctable] Style/WordArray: Use %w or %W for an array of words.
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:25:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
             ^^^^^^^^^^^^^
db/schema.rb:25:29: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
                            ^^^^^^^^^^^
db/schema.rb:25:42: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
                                         ^^^^^^
db/schema.rb:25:50: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
                                                 ^^^^^^^^^
db/schema.rb:25:68: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
                                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:25:121: C: [Correctable] Layout/LineLength: Line is too long. [126/120]
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
                                                                                                                        ^^^^^^
db/schema.rb:28:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  create_table "active_storage_blobs", force: :cascade do |t|
               ^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:29:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "key", null: false
             ^^^^^
db/schema.rb:30:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "filename", null: false
             ^^^^^^^^^^
db/schema.rb:31:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "content_type"
             ^^^^^^^^^^^^^^
db/schema.rb:32:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.text "metadata"
           ^^^^^^^^^^
db/schema.rb:33:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "service_name", null: false
             ^^^^^^^^^^^^^^
db/schema.rb:34:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.bigint "byte_size", null: false
             ^^^^^^^^^^^
db/schema.rb:35:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "checksum", null: false
             ^^^^^^^^^^
db/schema.rb:36:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.datetime "created_at", null: false
               ^^^^^^^^^^^^
db/schema.rb:37:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
             ^^^^^
db/schema.rb:37:28: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:40:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  create_table "active_storage_variant_records", force: :cascade do |t|
               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:41:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.bigint "blob_id", null: false
             ^^^^^^^^^
db/schema.rb:42:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "variation_digest", null: false
             ^^^^^^^^^^^^^^^^^^
db/schema.rb:43:13: C: [Correctable] Style/WordArray: Use %w or %W for an array of words.
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:43:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
             ^^^^^^^^^
db/schema.rb:43:25: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
                        ^^^^^^^^^^^^^^^^^^
db/schema.rb:43:52: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:46:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  create_table "offers", force: :cascade do |t|
               ^^^^^^^^
db/schema.rb:47:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "name"
             ^^^^^^
db/schema.rb:48:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "description"
             ^^^^^^^^^^^^^
db/schema.rb:49:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "phone"
             ^^^^^^^
db/schema.rb:50:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "email"
             ^^^^^^^
db/schema.rb:51:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "country"
             ^^^^^^^^^
db/schema.rb:52:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "location"
             ^^^^^^^^^^
db/schema.rb:53:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "meals"
             ^^^^^^^
db/schema.rb:54:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "host_name"
             ^^^^^^^^^^^
db/schema.rb:55:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.float "price"
            ^^^^^^^
db/schema.rb:56:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.integer "stars"
              ^^^^^^^
db/schema.rb:57:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.integer "rating"
              ^^^^^^^^
db/schema.rb:58:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.integer "cleaning"
              ^^^^^^^^^^
db/schema.rb:59:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.integer "food"
              ^^^^^^
db/schema.rb:60:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.integer "staff"
              ^^^^^^^
db/schema.rb:61:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.integer "confort"
              ^^^^^^^^^
db/schema.rb:62:15: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.integer "minimum_stay"
              ^^^^^^^^^^^^^^
db/schema.rb:63:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.datetime "created_at", precision: 6, null: false
               ^^^^^^^^^^^^
db/schema.rb:64:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.datetime "updated_at", precision: 6, null: false
               ^^^^^^^^^^^^
db/schema.rb:67:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  create_table "users", force: :cascade do |t|
               ^^^^^^^
db/schema.rb:68:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "email", default: "", null: false
             ^^^^^^^
db/schema.rb:68:32: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "email", default: "", null: false
                               ^^
db/schema.rb:69:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "encrypted_password", default: "", null: false
             ^^^^^^^^^^^^^^^^^^^^
db/schema.rb:69:45: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "encrypted_password", default: "", null: false
                                            ^^
db/schema.rb:70:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.string "reset_password_token"
             ^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:71:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.datetime "reset_password_sent_at"
               ^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:72:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.datetime "remember_created_at"
               ^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:73:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.datetime "created_at", precision: 6, null: false
               ^^^^^^^^^^^^
db/schema.rb:74:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.datetime "updated_at", precision: 6, null: false
               ^^^^^^^^^^^^
db/schema.rb:75:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["email"], name: "index_users_on_email", unique: true
             ^^^^^^^
db/schema.rb:75:30: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["email"], name: "index_users_on_email", unique: true
                             ^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:76:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
             ^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:76:45: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:79:19: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:79:49: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
                                                ^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:79:81: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
                                                                                ^^^^^^^^^
db/schema.rb:80:19: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:80:53: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
                                                    ^^^^^^^^^^^^^^^^^^^^^^
db/schema.rb:80:85: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
                                                                                    ^^^^^^^^^
db/seeds.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# This file should contain all the record creation needed to seed the database with its default values.
^
spec/controllers/pages_controller_spec.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require 'rails_helper'
^
spec/controllers/pages_controller_spec.rb:4:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  describe "should GET contact page" do
           ^^^^^^^^^^^^^^^^^^^^^^^^^
spec/models/offer_spec.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require 'rails_helper'
^
spec/models/offer_spec.rb:3:1: C: Metrics/BlockLength: Block has too many lines. [134/25]
RSpec.describe Offer, type: :model do ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/models/offer_spec.rb:4:3: W: Lint/ConstantDefinitionInBlock: Do not define constants this way within a block.
  MyString = "This is a string"
  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/models/offer_spec.rb:4:3: C: Naming/ConstantName: Use SCREAMING_SNAKE_CASE for constants.
  MyString = "This is a string"
  ^^^^^^^^
spec/models/offer_spec.rb:4:14: C: [Correctable] Style/MutableConstant: Freeze mutable objects assigned to constants.
  MyString = "This is a string"
             ^^^^^^^^^^^^^^^^^^
spec/models/offer_spec.rb:4:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  MyString = "This is a string"
             ^^^^^^^^^^^^^^^^^^
spec/models/offer_spec.rb:6:11: C: [Correctable] Style/BlockDelimiters: Avoid using {...} for multi-line blocks.
  subject {
          ^
spec/models/offer_spec.rb:22:22: C: [Correctable] Style/TrailingCommaInArguments: Avoid comma after the last parameter of a method call.
      minimum_stay: 5,
                     ^
spec/models/offer_spec.rb:168:1: C: [Correctable] Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.
spec/models/user_spec.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require 'rails_helper'
^
spec/models/user_spec.rb:3:1: C: Metrics/BlockLength: Block has too many lines. [42/25]
RSpec.describe User, type: :model do ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/models/user_spec.rb:17:121: C: Layout/LineLength: Line is too long. [146/120]
      password: 'timisoaratimisoaratimisoaratimisoaratimisoaratimisoaratimisoaraatimisoaratimisoaratimisoaratimisoaratimisoaratimisoaratimisoaraa'
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/models/user_spec.rb:25:121: C: Layout/LineLength: Line is too long. [147/120]
      password: 'timisoaratimisoaratimisoaratimisoaratimisoaratimisoaratimisoaraatimisoaratimisoaratimisoaratimisoaratimisoaratimisoaratimisoaraaa'
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/models/user_spec.rb:54:1: C: [Correctable] Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body end.
spec/rails_helper.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# This file is copied to spec/ when you run 'rails generate rspec:install'
^
spec/rails_helper.rb:6:7: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
abort("The Rails environment is running in production mode!") if Rails.env.production?
      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
 require 'rails_helper'
^
spec/requests/offers_spec.rb:1:2: C: [Correctable] Layout/InitialIndentation: Indentation of first line in file detected.
 require 'rails_helper'
 ^^^^^^^
spec/requests/offers_spec.rb:3:1: C: [Correctable] Layout/IndentationConsistency: Inconsistent indentation detected.
RSpec.describe "/offers", type: :request do ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:3:1: C: Metrics/BlockLength: Block has too many lines. [125/25]
RSpec.describe "/offers", type: :request do ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:3:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
RSpec.describe "/offers", type: :request do
               ^^^^^^^^^
spec/requests/offers_spec.rb:4:1: C: [Correctable] Layout/EmptyLinesAroundBlockBody: Extra empty line detected at block body beginning.
spec/requests/offers_spec.rb:5:26: C: [Correctable] Style/BlockDelimiters: Avoid using {...} for multi-line blocks.
  let(:valid_attributes) {
                         ^
spec/requests/offers_spec.rb:21:22: C: [Correctable] Style/TrailingCommaInHashLiteral: Avoid comma after the last item of a hash.
      minimum_stay: 5,
                     ^
spec/requests/offers_spec.rb:25:28: C: [Correctable] Style/BlockDelimiters: Avoid using {...} for multi-line blocks.
  let(:invalid_attributes) {
                           ^
spec/requests/offers_spec.rb:41:22: C: [Correctable] Style/TrailingCommaInHashLiteral: Avoid comma after the last item of a hash.
      minimum_stay: 0,
                     ^
spec/requests/offers_spec.rb:42:8: C: [Correctable] Layout/BlockEndNewline: Expression at 42, 8 should be on its own line.
    }  }
       ^
spec/requests/offers_spec.rb:44:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  describe "GET /index" do
           ^^^^^^^^^^^^
spec/requests/offers_spec.rb:45:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    it "renders a successful response" do
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:52:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  describe "GET /show" do
           ^^^^^^^^^^^
spec/requests/offers_spec.rb:53:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    it "renders a successful response" do
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:60:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  describe "GET /new" do
           ^^^^^^^^^^
spec/requests/offers_spec.rb:61:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    it "renders a successful response" do
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:67:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  describe "GET /edit" do
           ^^^^^^^^^^^
spec/requests/offers_spec.rb:68:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    it "render a successful response" do
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:75:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  describe "POST /create" do
           ^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:76:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    context "with valid parameters" do
            ^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:77:10: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      it "creates a new Offer" do
         ^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:78:16: C: [Correctable] Style/BlockDelimiters: Avoid using {...} for multi-line blocks.
        expect {
               ^
spec/requests/offers_spec.rb:83:10: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      it "redirects to the created offer" do
         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:89:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    context "with invalid parameters" do
            ^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:90:10: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      it "does not create a new Offer" do
         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:91:16: C: [Correctable] Style/BlockDelimiters: Avoid using {...} for multi-line blocks.
        expect {
               ^
spec/requests/offers_spec.rb:98:3: C: Metrics/BlockLength: Block has too many lines. [26/25]
  describe "PATCH /update" do ...
  ^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:98:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  describe "PATCH /update" do
           ^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:99:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    context "with valid parameters" do
            ^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:100:28: C: [Correctable] Style/BlockDelimiters: Avoid using {...} for multi-line blocks.
      let(:new_attributes) {
                           ^
spec/requests/offers_spec.rb:102:17: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
          name: "This"
                ^^^^^^
spec/requests/offers_spec.rb:106:10: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      it "updates the requested offer" do
         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:113:10: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      it "redirects to the offer" do
         ^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:121:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    context "with invalid parameters" do
            ^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:130:12: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  describe "DELETE /destroy" do
           ^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:131:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    it "destroys the requested offer" do
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/requests/offers_spec.rb:133:14: C: [Correctable] Style/BlockDelimiters: Avoid using {...} for multi-line blocks.
      expect {
             ^
spec/requests/offers_spec.rb:138:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    it "redirects to the offers list" do
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
spec/spec_helper.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require 'simplecov'
^
spec/spec_helper.rb:52:1: C: [Correctable] Style/BlockComments: Do not use block comments.
=begin ...
^^^^^^
test/application_system_test_case.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "test_helper"
^
test/application_system_test_case.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "test_helper"
        ^^^^^^^^^^^^^
test/channels/application_cable/connection_test.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "test_helper"
^
test/channels/application_cable/connection_test.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "test_helper"
        ^^^^^^^^^^^^^
test/channels/application_cable/connection_test.rb:3:7: C: [Correctable] Style/ClassAndModuleChildren: Use nested module/class definitions instead of compact style.
class ApplicationCable::ConnectionTest < ActionCable::Connection::TestCase
      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "test_helper"
^
test/controllers/offers_controller_test.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "test_helper"
        ^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:8:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "should get index" do
       ^^^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:13:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "should get new" do
       ^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:18:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "should create offer" do
       ^^^^^^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:20:121: C: [Correctable] Layout/LineLength: Line is too long. [432/120]
      post offers_url, params: { offer: { cleaning: @offer.cleaning, confort: @offer.confort, country: @offer.country, description: @offer.description, email: @offer.email, food: @offer.food, host_name: @offer.host_name, location: @offer.location, meals: @offer.meals, minimum_stay: @offer.minimum_stay, name: @offer.name, phone: @offer.phone, price: @offer.price, rating: @offer.rating, staff: @offer.staff, stars: @offer.stars } }
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:26:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "should show offer" do
       ^^^^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:31:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "should get edit" do
       ^^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:36:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "should update offer" do
       ^^^^^^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:37:121: C: [Correctable] Layout/LineLength: Line is too long. [438/120]
    patch offer_url(@offer), params: { offer: { cleaning: @offer.cleaning, confort: @offer.confort, country: @offer.country, description: @offer.description, email: @offer.email, food: @offer.food, host_name: @offer.host_name, location: @offer.location, meals: @offer.meals, minimum_stay: @offer.minimum_stay, name: @offer.name, phone: @offer.phone, price: @offer.price, rating: @offer.rating, staff: @offer.staff, stars: @offer.stars } }
                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test/controllers/offers_controller_test.rb:41:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "should destroy offer" do
       ^^^^^^^^^^^^^^^^^^^^^^
test/controllers/pages_controller_test.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "test_helper"
^
test/controllers/pages_controller_test.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "test_helper"
        ^^^^^^^^^^^^^
test/controllers/pages_controller_test.rb:4:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "should get contact" do
       ^^^^^^^^^^^^^^^^^^^^
test/models/offer_test.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "test_helper"
^
test/models/offer_test.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "test_helper"
        ^^^^^^^^^^^^^
test/models/user_test.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "test_helper"
^
test/models/user_test.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "test_helper"
        ^^^^^^^^^^^^^
test/system/offers_test.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
require "application_system_test_case"
^
test/system/offers_test.rb:1:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "application_system_test_case"
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test/system/offers_test.rb:8:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "visiting the index" do
       ^^^^^^^^^^^^^^^^^^^^
test/system/offers_test.rb:10:21: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    assert_selector "h1", text: "Offers"
                    ^^^^
test/system/offers_test.rb:10:33: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    assert_selector "h1", text: "Offers"
                                ^^^^^^^^
test/system/offers_test.rb:13:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "creating a Offer" do
       ^^^^^^^^^^^^^^^^^^
test/system/offers_test.rb:15:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    click_on "New Offer"
             ^^^^^^^^^^^
test/system/offers_test.rb:17:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Cleaning", with: @offer.cleaning
            ^^^^^^^^^^
test/system/offers_test.rb:18:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Confort", with: @offer.confort
            ^^^^^^^^^
test/system/offers_test.rb:19:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Country", with: @offer.country
            ^^^^^^^^^
test/system/offers_test.rb:20:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Description", with: @offer.description
            ^^^^^^^^^^^^^
test/system/offers_test.rb:21:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Email", with: @offer.email
            ^^^^^^^
test/system/offers_test.rb:22:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Food", with: @offer.food
            ^^^^^^
test/system/offers_test.rb:23:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Host name", with: @offer.host_name
            ^^^^^^^^^^^
test/system/offers_test.rb:24:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Location", with: @offer.location
            ^^^^^^^^^^
test/system/offers_test.rb:25:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Meals", with: @offer.meals
            ^^^^^^^
test/system/offers_test.rb:26:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Minimum stay", with: @offer.minimum_stay
            ^^^^^^^^^^^^^^
test/system/offers_test.rb:27:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Name", with: @offer.name
            ^^^^^^
test/system/offers_test.rb:28:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Phone", with: @offer.phone
            ^^^^^^^
test/system/offers_test.rb:29:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Price", with: @offer.price
            ^^^^^^^
test/system/offers_test.rb:30:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Rating", with: @offer.rating
            ^^^^^^^^
test/system/offers_test.rb:31:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Staff", with: @offer.staff
            ^^^^^^^
test/system/offers_test.rb:32:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Stars", with: @offer.stars
            ^^^^^^^
test/system/offers_test.rb:33:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    click_on "Create Offer"
             ^^^^^^^^^^^^^^
test/system/offers_test.rb:35:17: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    assert_text "Offer was successfully created"
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test/system/offers_test.rb:36:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    click_on "Back"
             ^^^^^^
test/system/offers_test.rb:39:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "updating a Offer" do
       ^^^^^^^^^^^^^^^^^^
test/system/offers_test.rb:41:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    click_on "Edit", match: :first
             ^^^^^^
test/system/offers_test.rb:43:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Cleaning", with: @offer.cleaning
            ^^^^^^^^^^
test/system/offers_test.rb:44:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Confort", with: @offer.confort
            ^^^^^^^^^
test/system/offers_test.rb:45:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Country", with: @offer.country
            ^^^^^^^^^
test/system/offers_test.rb:46:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Description", with: @offer.description
            ^^^^^^^^^^^^^
test/system/offers_test.rb:47:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Email", with: @offer.email
            ^^^^^^^
test/system/offers_test.rb:48:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Food", with: @offer.food
            ^^^^^^
test/system/offers_test.rb:49:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Host name", with: @offer.host_name
            ^^^^^^^^^^^
test/system/offers_test.rb:50:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Location", with: @offer.location
            ^^^^^^^^^^
test/system/offers_test.rb:51:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Meals", with: @offer.meals
            ^^^^^^^
test/system/offers_test.rb:52:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Minimum stay", with: @offer.minimum_stay
            ^^^^^^^^^^^^^^
test/system/offers_test.rb:53:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Name", with: @offer.name
            ^^^^^^
test/system/offers_test.rb:54:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Phone", with: @offer.phone
            ^^^^^^^
test/system/offers_test.rb:55:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Price", with: @offer.price
            ^^^^^^^
test/system/offers_test.rb:56:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Rating", with: @offer.rating
            ^^^^^^^^
test/system/offers_test.rb:57:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Staff", with: @offer.staff
            ^^^^^^^
test/system/offers_test.rb:58:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    fill_in "Stars", with: @offer.stars
            ^^^^^^^
test/system/offers_test.rb:59:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    click_on "Update Offer"
             ^^^^^^^^^^^^^^
test/system/offers_test.rb:61:17: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    assert_text "Offer was successfully updated"
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test/system/offers_test.rb:62:14: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    click_on "Back"
             ^^^^^^
test/system/offers_test.rb:65:8: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  test "destroying a Offer" do
       ^^^^^^^^^^^^^^^^^^^^
test/system/offers_test.rb:68:16: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
      click_on "Destroy", match: :first
               ^^^^^^^^^
test/system/offers_test.rb:71:17: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    assert_text "Offer was successfully destroyed"
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test/test_helper.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
ENV['RAILS_ENV'] ||= 'test'
^
test/test_helper.rb:2:18: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require_relative "../config/environment"
                 ^^^^^^^^^^^^^^^^^^^^^^^
test/test_helper.rb:3:9: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
require "rails/test_help"
        ^^^^^^^^^^^^^^^^^
test/test_helper.rb:5:7: C: [Correctable] Style/ClassAndModuleChildren: Use nested module/class definitions instead of compact style.
class ActiveSupport::TestCase
      ^^^^^^^^^^^^^^^^^^^^^^^

66 files inspected, 450 offenses detected, 417 offenses auto-correctable