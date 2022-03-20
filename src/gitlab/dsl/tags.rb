# frozen_string_literal: true

class Gitlab::Dsl::Tags
  def initialize(ctx)
    @values = []
    @ctx = ctx
  end

  def call(*values)
    @values += values
  end

  def serialize
    return if @values.empty?

    @values
  end
end
