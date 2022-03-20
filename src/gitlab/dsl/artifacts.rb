# frozen_string_literal: true

class Gitlab::Dsl::Artifacts
  def initialize(ctx)
    @ctx = ctx
    @value = nil
  end

  def serialize
    @value
  end

  def call(value, &block)
    @value = value
  end
end
