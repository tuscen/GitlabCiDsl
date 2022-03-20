# frozen_string_literal: true

class Gitlab::Dsl::Default
  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def serialize
    return if @values.empty?

    @values
  end

  def add(value)
    @values << value
  end
end
