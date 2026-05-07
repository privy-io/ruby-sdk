# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::PoliciesTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.policies.create(
        chain_type: :ethereum,
        name: "x",
        rules: [
          {
            action: :ALLOW,
            conditions: [{field: :to, field_source: :ethereum_transaction, operator: :eq, value: "string"}],
            method: :eth_sendTransaction,
            name: "x"
          }
        ],
        version: :"1.0"
      )

    assert_pattern do
      response => Privy::Policy
    end

    assert_pattern do
      response => {
        id: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        name: String,
        owner_id: String | nil,
        rules: ^(Privy::Internal::Type::ArrayOf[Privy::PolicyRuleResponse]),
        version: Privy::Policy::Version
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @privy_api.policies.update("xxxxxxxxxxxxxxxxxxxxxxxx")

    assert_pattern do
      response => Privy::Policy
    end

    assert_pattern do
      response => {
        id: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        name: String,
        owner_id: String | nil,
        rules: ^(Privy::Internal::Type::ArrayOf[Privy::PolicyRuleResponse]),
        version: Privy::Policy::Version
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @privy_api.policies.delete("xxxxxxxxxxxxxxxxxxxxxxxx")

    assert_pattern do
      response => Privy::SuccessResponse
    end

    assert_pattern do
      response => {
        success: Privy::Internal::Type::Boolean
      }
    end
  end

  def test_create_rule_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.policies.create_rule(
        "xxxxxxxxxxxxxxxxxxxxxxxx",
        action: :ALLOW,
        conditions: [{field: :to, field_source: :ethereum_transaction, operator: :eq, value: "string"}],
        method_: :eth_sendTransaction,
        name: "x"
      )

    assert_pattern do
      response => Privy::PolicyRuleResponse
    end

    assert_pattern do
      response => {
        id: String,
        action: Privy::PolicyAction,
        conditions: ^(Privy::Internal::Type::ArrayOf[union: Privy::PolicyCondition]),
        method_: Privy::PolicyMethod,
        name: String
      }
    end
  end

  def test_delete_rule_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.policies.delete_rule("xxxxxxxxxxxxxxxxxxxxxxxx", policy_id: "xxxxxxxxxxxxxxxxxxxxxxxx")

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

    response = @privy_api.policies.get("xxxxxxxxxxxxxxxxxxxxxxxx")

    assert_pattern do
      response => Privy::Policy
    end

    assert_pattern do
      response => {
        id: String,
        chain_type: Privy::WalletChainType,
        created_at: Float,
        name: String,
        owner_id: String | nil,
        rules: ^(Privy::Internal::Type::ArrayOf[Privy::PolicyRuleResponse]),
        version: Privy::Policy::Version
      }
    end
  end

  def test_get_rule_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.policies.get_rule("xxxxxxxxxxxxxxxxxxxxxxxx", policy_id: "xxxxxxxxxxxxxxxxxxxxxxxx")

    assert_pattern do
      response => Privy::PolicyRuleResponse
    end

    assert_pattern do
      response => {
        id: String,
        action: Privy::PolicyAction,
        conditions: ^(Privy::Internal::Type::ArrayOf[union: Privy::PolicyCondition]),
        method_: Privy::PolicyMethod,
        name: String
      }
    end
  end

  def test_update_rule_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.policies.update_rule(
        "xxxxxxxxxxxxxxxxxxxxxxxx",
        policy_id: "xxxxxxxxxxxxxxxxxxxxxxxx",
        action: :ALLOW,
        conditions: [{field: :to, field_source: :ethereum_transaction, operator: :eq, value: "string"}],
        method_: :eth_sendTransaction,
        name: "x"
      )

    assert_pattern do
      response => Privy::PolicyRuleResponse
    end

    assert_pattern do
      response => {
        id: String,
        action: Privy::PolicyAction,
        conditions: ^(Privy::Internal::Type::ArrayOf[union: Privy::PolicyCondition]),
        method_: Privy::PolicyMethod,
        name: String
      }
    end
  end
end
