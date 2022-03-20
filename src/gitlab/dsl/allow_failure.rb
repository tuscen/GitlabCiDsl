# frozen_string_literal: true

class Gitlab::Dsl::AllowFailure
  def initialize(ctx)
    @ctx = ctx
    @value = nil
  end

  def call(value)
    @value = value
  end

  def serialize
    @value
  end
end
