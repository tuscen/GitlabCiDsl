# frozen_string_literal: true

class Gitlab::Dsl::Rules
  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def call(*rules)
    @values += rules
  end

  def serialize
    return if @values.empty?

    @values
  end
end
