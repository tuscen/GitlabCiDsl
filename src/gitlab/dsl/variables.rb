# frozen_string_literal: true

class Gitlab::Dsl::Variables
  def initialize(ctx)
    @ctx = ctx
    @values = []
  end

  def serialize
    return if @values.empty?

    @values.inject(&:merge)
  end

  def call(value)
    @values << value.transform_values(&:to_s)
  end
end
