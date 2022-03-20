# frozen_string_literal: true

class Gitlab::Dsl::Needs
  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def serialize
    return if @values.empty?

    @values.flatten.uniq
  end

  def call(*values)
    @values += values
  end
end
