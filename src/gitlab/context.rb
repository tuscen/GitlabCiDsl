# frozen_string_literal: true

class Gitlab::Context
  attr_reader :project_dir, :variables

  def initialize
    @variables = Gitlab::PredefinedVariables.new
    @project_dir = Pathname.new(@variables.ci_project_dir).freeze
    freeze
  end

  def default_branch?
    return false if @variables.ci_commit_branch.nil? || @variables.ci_default_branch.nil?

    @variables.ci_commit_branch == @variables.ci_default_branch
  end
end
