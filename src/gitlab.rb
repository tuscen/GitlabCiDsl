# frozen_string_literal: true

require 'pathname'

module Gitlab
  module Dsl
  end

  require_relative 'gitlab/predefined_variables'
  require_relative 'gitlab/dsl/environment'
  require_relative 'gitlab/helpers'
  require_relative 'gitlab/context'
  require_relative 'gitlab/dsl/default'
  require_relative 'gitlab/dsl/image'
  require_relative 'gitlab/dsl/only'
  require_relative 'gitlab/dsl/secrets'
  require_relative 'gitlab/dsl/interruptible'
  require_relative 'gitlab/dsl/pages'
  require_relative 'gitlab/dsl/inherit'
  require_relative 'gitlab/dsl/when'
  require_relative 'gitlab/dsl/trigger'
  require_relative 'gitlab/dsl/timeout'
  require_relative 'gitlab/dsl/allow_failure'
  require_relative 'gitlab/dsl/artifacts'
  require_relative 'gitlab/dsl/cache'
  require_relative 'gitlab/dsl/extends'
  require_relative 'gitlab/dsl/except'
  require_relative 'gitlab/dsl/parallel'
  require_relative 'gitlab/dsl/release'
  require_relative 'gitlab/dsl/release_group'
  require_relative 'gitlab/dsl/rules'
  require_relative 'gitlab/dsl/services'
  require_relative 'gitlab/dsl/stage'
  require_relative 'gitlab/dsl/stages'
  require_relative 'gitlab/dsl/tags'
  require_relative 'gitlab/dsl/retry'
  require_relative 'gitlab/dsl/needs'
  require_relative 'gitlab/dsl/dependencies'
  require_relative 'gitlab/dsl/include'
  require_relative 'gitlab/dsl/variables'
  require_relative 'gitlab/dsl/workflow'
  require_relative 'gitlab/dsl/script'
  require_relative 'gitlab/dsl/coverage'
  require_relative 'gitlab/dsl/job'
  require_relative 'gitlab/dsl/jobs'
  require_relative 'gitlab/dsl/gitlabfile'

  def self.read_pipeline(path)
    contents = File.read(path)
    gitlabfile = Dsl::Gitlabfile.new
    base_path = File.expand_path(File.dirname(path))
    gitlabfile.apply(contents, base_path)
  end
end
