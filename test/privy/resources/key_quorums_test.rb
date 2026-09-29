# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::KeyQuorumsTest < Privy::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @privy_api.key_quorums.create

    assert_pattern do
      response => Privy::KeyQuorum
    end

    assert_pattern do
      response => {
        id: String,
        authorization_keys: ^(Privy::Internal::Type::ArrayOf[Privy::AuthorizationKey]),
        authorization_threshold: Float | nil,
        display_name: String | nil,
        user_ids: ^(Privy::Internal::Type::ArrayOf[String]) | nil,
        key_quorum_ids: ^(Privy::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @privy_api.key_quorums.update("string")

    assert_pattern do
      response => Privy::KeyQuorum
    end

    assert_pattern do
      response => {
        id: String,
        authorization_keys: ^(Privy::Internal::Type::ArrayOf[Privy::AuthorizationKey]),
        authorization_threshold: Float | nil,
        display_name: String | nil,
        user_ids: ^(Privy::Internal::Type::ArrayOf[String]) | nil,
        key_quorum_ids: ^(Privy::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.key_quorums.list

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::KeyQuorum
    end

    assert_pattern do
      row => {
        id: String,
        authorization_keys: ^(Privy::Internal::Type::ArrayOf[Privy::AuthorizationKey]),
        authorization_threshold: Float | nil,
        display_name: String | nil,
        user_ids: ^(Privy::Internal::Type::ArrayOf[String]) | nil,
        key_quorum_ids: ^(Privy::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @privy_api.key_quorums.delete("string")

    assert_pattern do
      response => Privy::SuccessResponse
    end

    assert_pattern do
      response => {
        success: Privy::Internal::Type::Boolean
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.key_quorums.get("string")

    assert_pattern do
      response => Privy::KeyQuorum
    end

    assert_pattern do
      response => {
        id: String,
        authorization_keys: ^(Privy::Internal::Type::ArrayOf[Privy::AuthorizationKey]),
        authorization_threshold: Float | nil,
        display_name: String | nil,
        user_ids: ^(Privy::Internal::Type::ArrayOf[String]) | nil,
        key_quorum_ids: ^(Privy::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
