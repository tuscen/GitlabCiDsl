# frozen_string_literal: true

class Gitlab::Dsl::Cache
  def initialize(ctx)
    @ctx = ctx
    @value = nil
  end

  def call(value, &block)
    @value = value
  end

  def serialize

    @value
  end
end
