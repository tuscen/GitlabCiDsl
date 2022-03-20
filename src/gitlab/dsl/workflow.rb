# frozen_string_literal: true

class Gitlab::Dsl::Workflow
  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def serialize
    return if @values.empty?

    { rules: @values }
  end

  def call(value)
    @values << value.transform_values(&:to_s)
  end
end
