# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::OrganizationsTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.organizations.create(default_key_quorum_id: "string", display_name: "x")

    assert_pattern do
      response => Privy::Organization
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        default_key_quorum_id: String,
        display_name: String,
        updated_at: Float
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @privy_api.organizations.update("organization_id")

    assert_pattern do
      response => Privy::Organization
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        default_key_quorum_id: String,
        display_name: String,
        updated_at: Float
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.organizations.list

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::Organization
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Float,
        default_key_quorum_id: String,
        display_name: String,
        updated_at: Float
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @privy_api.organizations.delete("organization_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.organizations.get("organization_id")

    assert_pattern do
      response => Privy::Organization
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        default_key_quorum_id: String,
        display_name: String,
        updated_at: Float
      }
    end
  end
end
