# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Services::IntentsTest < Minitest::Test
  # Guards against new generated intent endpoints that take the header but have no
  # wrapper: every generated method that references privy-request-expiry must be
  # overridden by Privy::Services::Intents.
  def test_wraps_every_header_bearing_intent_method
    source = File.read(Privy::Resources::Intents.instance_method(:rpc).source_location.first)
    header_bearing = source.split(/^\s+def /).drop(1).filter_map do |chunk|
      chunk[/\A\w+/].to_sym if chunk.include?("privy-request-expiry")
    end
    refute_empty(header_bearing)
    assert_equal(
      header_bearing.sort,
      Privy::Services::Intents.public_instance_methods(false).sort - [:privy_client]
    )
  end

  def test_intents_accessor_is_a_service
    client = Privy::PrivyClient.new(app_id: "app-abc", app_secret: "secret", environment: :staging)
    assert_instance_of(Privy::Services::Intents, client.intents)
  end
end
