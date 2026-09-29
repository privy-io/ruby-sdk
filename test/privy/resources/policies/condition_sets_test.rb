# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Policies::ConditionSetsTest < Privy::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.policies.condition_sets.list

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::ConditionSet
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Float,
        name: String,
        owner_id: String | nil
      }
    end
  end
end
