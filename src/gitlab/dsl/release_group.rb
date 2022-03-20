# frozen_string_literal: true

class Gitlab::Dsl::ReleaseGroup
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