# frozen_string_literal: true

class Gitlab::Dsl::Extends
  def initialize(ctx)
    @ctx = ctx
    @value = nil
  end

  def serialize
    @value
  end

  def call(value)
    @value = value
  end
end
