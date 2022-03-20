# frozen_string_literal: true

require_relative '../helpers'

class Gitlab::Dsl::Script
  using Gitlab::StringPatch

  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def serialize
    return if @values.empty?

    @values
  end

  def call(*values)
    @values += values.collect { |s| s.deindent.strip }
  end
end
