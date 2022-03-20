# frozen_string_literal: true

class Gitlab::Dsl::Environment
  def initialize(ctx)
    @ctx = ctx
    @url = nil
    @auto_stop_in = nil
    @action = nil
    @on_stop = nil
    @deployment_tier = nil

    @value = nil
  end

  def call(value)
    @value = value
  end

  def serialize
    @value
    # {
    #   name: @name,
    #   url: @url,
    #   auto_stop_in: @auto_stop_in,
    #   action: @action,
    #   on_stop: @on_stop,
    #   deployment_tier: @deployment_tier
    # }.compact
  end

  private

  def name(value)
    @name = value
  end

  def url(value)
    @url = value
  end

  def action(value)
    @action = value
  end

  def on_stop(value)
    @on_stop = value
  end

  def deployment_tier(value)
    @deployment_tier = value
  end
end
