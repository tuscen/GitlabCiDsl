# frozen_string_literal: true

class Gitlab::Dsl::Include
  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def serialize
    return if @values.empty?

    @values.collect { |v| v.is_a?(Hash) ? v : { local: v } }
  end

  def call(value)
    @values << value
  end
end
