# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Apps::DenylistTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.apps.denylist.create(
        "app_id",
        denylist_entry_create_request_body: {type: :email, value: "user@example.com"}
      )

    assert_pattern do
      response => Privy::DenylistEntry
    end

    assert_pattern do
      response => {
        id: String,
        rule_type: Privy::DenylistRuleType,
        value: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.apps.denylist.list("app_id")

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::DenylistEntry
    end

    assert_pattern do
      row => {
        id: String,
        rule_type: Privy::DenylistRuleType,
        value: String
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.apps.denylist.delete("app_id", id: "clpa828s4001hl90f6dxoksrg")

    assert_pattern do
      response => nil
    end
  end
end
