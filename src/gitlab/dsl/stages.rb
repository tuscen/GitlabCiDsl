# frozen_string_literal: true

class Gitlab::Dsl::Stages
  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def serialize
    return if @values.empty?

    @values.uniq
  end

  def call(*value)
    @values += value.uniq
  end
end
