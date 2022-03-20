class Gitlab::Dsl::Trigger
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
