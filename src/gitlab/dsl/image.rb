# frozen_string_literal: true

class Gitlab::Dsl::Image
  def initialize(ctx)
    @ctx = ctx
    @image = nil
  end

  def serialize
    @image
  end
end
