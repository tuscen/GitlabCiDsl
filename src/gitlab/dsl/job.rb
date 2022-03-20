# frozen_string_literal: true

require_relative '../helpers'

# noinspection RubyTooManyInstanceVariablesInspection
class Gitlab::Dsl::Job
  attr_accessor :ctx, :hidden

  def initialize(ctx, job_name = nil)
    @ctx = ctx
    @job_name = job_name
    @hidden = true

    @after_script = Gitlab::Dsl::Script.new @ctx
    @allow_failure = Gitlab::Dsl::AllowFailure.new @ctx
    @artifacts = Gitlab::Dsl::Artifacts.new @ctx
    @before_script = Gitlab::Dsl::Script.new @ctx
    @cache = Gitlab::Dsl::Cache.new @ctx
    @coverage = Gitlab::Dsl::Coverage.new @ctx
    @dependencies = Gitlab::Dsl::Dependencies.new @ctx
    @environment = Gitlab::Dsl::Environment.new @ctx
    @except = Gitlab::Dsl::Except.new @ctx
    @extends = Gitlab::Dsl::Extends.new @ctx
    @image = Gitlab::Dsl::Image.new @ctx
    @inherit = Gitlab::Dsl::Inherit.new @ctx
    @interruptible = Gitlab::Dsl::Interruptible.new @ctx
    @needs = Gitlab::Dsl::Needs.new @ctx
    @only = Gitlab::Dsl::Only.new @ctx
    @pages = Gitlab::Dsl::Pages.new @ctx
    @parallel = Gitlab::Dsl::Parallel.new @ctx
    @release = Gitlab::Dsl::Release.new @ctx
    @release_group = Gitlab::Dsl::ReleaseGroup.new @ctx
    @retry = Gitlab::Dsl::Retry.new @ctx
    @rules = Gitlab::Dsl::Rules.new @ctx
    @script = Gitlab::Dsl::Script.new @ctx
    @secrets = Gitlab::Dsl::Secrets.new @ctx
    @services = Gitlab::Dsl::Services.new @ctx
    @stage = Gitlab::Dsl::Stage.new @ctx
    @tags = Gitlab::Dsl::Tags.new @ctx
    @timeout = Gitlab::Dsl::Timeout.new @ctx
    @trigger = Gitlab::Dsl::Trigger.new @ctx
    @variables = Gitlab::Dsl::Variables.new @ctx
    @when = Gitlab::Dsl::When.new @ctx

    configure if self.class.method_defined?(:configure)
  end

  def job_name
    if @job_name.nil?
      hidden_job_prefix = @hidden ? '.' : ''
      "#{hidden_job_prefix}#{self.class.name}"
    else
      @job_name
    end
  end

  def job_name=(job_name)
    @job_name = job_name
  end

  def serialize
    {
      after_script: @after_script.serialize,
      allow_failure: @allow_failure.serialize,
      artifacts: @artifacts.serialize,
      before_script: @before_script.serialize,
      cache: @cache.serialize,
      coverage: @coverage.serialize,
      dependencies: @dependencies.serialize,
      environment: @environment.serialize,
      except: @except.serialize,
      extends: @extends.serialize,
      image: @image.serialize,
      inherit: @inherit.serialize,
      interruptible: @interruptible.serialize,
      needs: @needs.serialize,
      only: @only.serialize,
      pages: @pages.serialize,
      parallel: @parallel.serialize,
      release: @release.serialize,
      release_group: @release_group.serialize,
      retry: @retry.serialize,
      rules: @rules.serialize,
      script: @script.serialize,
      secrets: @secrets.serialize,
      services: @services.serialize,
      stage: @stage.serialize,
      tags: @tags.serialize,
      timeout: @timeout.serialize,
      trigger: @trigger.serialize,
      variables: @variables.serialize,
      when: @when.serialize
    }.compact
  end

  def apply(&block)
    instance_exec @ctx, &block
  end

  private

  def self.configure &block
    define_method(:configure, &block)
  end

  def extends(value)
    @extends.call value
  end

  def stage(value)
    @stage.call value
  end

  def before_script(*values)
    @before_script.call(*values)
  end

  def script(*lines)
    @script.call(*lines)
  end

  def after_script(*values)
    @after_script.call(*values)
  end

  def rule(value)
    @rules.call(value)
  end

  def needs(*values)
    @needs.call(*values)
  end

  def dependencies(*values)
    @dependencies.call(*values)
  end

  def environment(value)
    @environment.call value
  end

  def variables(value)
    @variables.call value
  end

  def tags(*values)
    @tags.call(*values)
  end
end
