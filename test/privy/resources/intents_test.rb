# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::IntentsTest < Privy::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.intents.list

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::IntentResponse
    end

    assert_pattern do
      case row
      in Privy::RpcIntentResponse
      in Privy::TransferIntentResponse
      in Privy::WalletIntentResponse
      in Privy::PolicyIntentResponse
      in Privy::RuleIntentResponse
      in Privy::KeyQuorumIntentResponse
      end
    end
  end

  def test_create_policy_rule_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.intents.create_policy_rule(
        "policy_id",
        action: :ALLOW,
        conditions: [{field: :to, field_source: :ethereum_transaction, operator: :eq, value: "string"}],
        method_: :eth_sendTransaction,
        name: "x"
      )

    assert_pattern do
      response => Privy::RuleMutateIntentResponse
    end
  end

  def test_delete_policy_rule_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.intents.delete_policy_rule("rule_id", policy_id: "policy_id")

    assert_pattern do
      response => Privy::RuleDeleteIntentResponse
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.intents.get("intent_id")

    assert_pattern do
      response => Privy::IntentResponse
    end

    assert_pattern do
      case response
      in Privy::RpcIntentResponse
      in Privy::TransferIntentResponse
      in Privy::WalletIntentResponse
      in Privy::PolicyIntentResponse
      in Privy::RuleIntentResponse
      in Privy::KeyQuorumIntentResponse
      end
    end
  end

  def test_rpc_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.intents.rpc(
        "wallet_id",
        wallet_rpc_request_body: {method: :eth_signTransaction, params: {transaction: {}}}
      )

    assert_pattern do
      response => Privy::RpcIntentResponse
    end
  end

  def test_transfer_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.intents.transfer(
        "wallet_id",
        destination: {address: "0xB00F0759DbeeF5E543Cc3E3B07A6442F5f3928a2"},
        source: {asset: "usdc", chain: "base"}
      )

    assert_pattern do
      response => Privy::TransferIntentResponse
    end
  end

  def test_update_key_quorum
    skip("Mock server tests are disabled")

    response = @privy_api.intents.update_key_quorum("key_quorum_id")

    assert_pattern do
      response => Privy::KeyQuorumIntentResponse
    end
  end

  def test_update_policy
    skip("Mock server tests are disabled")

    response = @privy_api.intents.update_policy("policy_id")

    assert_pattern do
      response => Privy::PolicyIntentResponse
    end
  end

  def test_update_policy_rule_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.intents.update_policy_rule(
        "rule_id",
        policy_id: "policy_id",
        action: :ALLOW,
        conditions: [{field: :to, field_source: :ethereum_transaction, operator: :eq, value: "string"}],
        method_: :eth_sendTransaction,
        name: "x"
      )

    assert_pattern do
      response => Privy::RuleMutateIntentResponse
    end
  end

  def test_update_wallet
    skip("Mock server tests are disabled")

    response = @privy_api.intents.update_wallet("wallet_id")

    assert_pattern do
      response => Privy::WalletIntentResponse
    end
  end
end
