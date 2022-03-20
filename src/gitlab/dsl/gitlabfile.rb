# frozen_string_literal: true
# noinspection RubyClassVariableUsageInspection

require 'pathname'

class Gitlab::Dsl::Gitlabfile
  attr_reader :ctx

  include Gitlab::RequireRelativePatch

  def initialize
    @ctx = Gitlab::Context.new

    @image = Gitlab::Dsl::Image.new @ctx
    @includes = Gitlab::Dsl::Include.new @ctx
    @stages = Gitlab::Dsl::Stages.new @ctx
    @variables = Gitlab::Dsl::Variables.new @ctx
    @workflow = Gitlab::Dsl::Workflow.new @ctx
    @jobs = Gitlab::Dsl::Jobs.new @ctx
    @default = Gitlab::Dsl::Default.new @ctx

    configure if self.class.method_defined?(:configure)
  end

  def apply(contents, base_path)
    set_require_relative_path(base_path)
    instance_eval(contents)
    self
  end

  def serialize
    {
      include: @includes.serialize,
      workflow: @workflow.serialize,
      stages: @stages.serialize,
      default: @default.serialize,
      variables: @variables.serialize
    }.merge(@jobs.serialize || {}).compact
  end

  private

  def self.configure(&block)
    define_method(:configure, &block)
  end

  @@reserved_words = %w[
    include
    stages
    variables
    workflow
    default
  ].freeze

  def job(name, parent_job = nil, &block)
    raise "#{name} is a reserved keyword" if @@reserved_words.include?(name.to_s)

    @jobs.call name, parent_job, &block
  end

  def include(value)
    @includes.call value
  end

  def stages(*values)
    @stages.call(*values)
  end

  def workflow(value)
    @workflow.call value
  end

  def variables(*values)
    @variables.call(*values)
  end
end
