# frozen_string_literal: true

require_relative "../test_helper"

class Privy::PrivyClientTest < Minitest::Test
  def test_constructs_with_explicit_credentials
    client = Privy::PrivyClient.new(app_id: "app-123", app_secret: "secret", environment: :staging)
    assert_equal("app-123", client.app_id)
    assert_instance_of(Privy::Client, client.api)
  end
end
