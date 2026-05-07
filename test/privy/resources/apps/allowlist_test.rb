# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Apps::AllowlistTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.apps.allowlist.create("app_id", user_invite_input: {type: :email, value: "batman@privy.io"})

    assert_pattern do
      response => Privy::AllowlistEntry
    end

    assert_pattern do
      response => {
        id: String,
        accepted_at: Float | nil,
        app_id: String,
        type: String,
        value: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.apps.allowlist.list("app_id")

    assert_pattern do
      response => ^(Privy::Internal::Type::ArrayOf[Privy::AllowlistEntry])
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.apps.allowlist.delete("app_id", user_invite_input: {type: :email, value: "batman@privy.io"})

    assert_pattern do
      response => Privy::AllowlistDeletionResponse
    end

    assert_pattern do
      response => {
        message: String
      }
    end
  end
end
