# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::WalletAutomationsTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallet_automations.create(
        config: {
          action: {destination_chain_asset: {asset_address: "x", caip2: "x"}, type: :swap},
          trigger: {assets: {mode: :all}, type: :deposit}
        },
        owner_id: "x"
      )

    assert_pattern do
      response => Privy::WalletAutomationResponse
    end

    assert_pattern do
      response => {
        id: String,
        app_id: String,
        config: Privy::AutomationConfig,
        created_at: String,
        name: String | nil,
        owner_id: String | nil,
        status: Privy::WalletAutomationStatus,
        updated_at: String
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @privy_api.wallet_automations.update("automation_id")

    assert_pattern do
      response => Privy::WalletAutomationResponse
    end

    assert_pattern do
      response => {
        id: String,
        app_id: String,
        config: Privy::AutomationConfig,
        created_at: String,
        name: String | nil,
        owner_id: String | nil,
        status: Privy::WalletAutomationStatus,
        updated_at: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.wallet_automations.list

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::WalletAutomationResponse
    end

    assert_pattern do
      row => {
        id: String,
        app_id: String,
        config: Privy::AutomationConfig,
        created_at: String,
        name: String | nil,
        owner_id: String | nil,
        status: Privy::WalletAutomationStatus,
        updated_at: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @privy_api.wallet_automations.delete("automation_id")

    assert_pattern do
      response => Privy::WalletAutomationSuccessResponse
    end

    assert_pattern do
      response => {
        success: Privy::WalletAutomationSuccessResponse::Success
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.wallet_automations.get("automation_id")

    assert_pattern do
      response => Privy::WalletAutomationResponse
    end

    assert_pattern do
      response => {
        id: String,
        app_id: String,
        config: Privy::AutomationConfig,
        created_at: String,
        name: String | nil,
        owner_id: String | nil,
        status: Privy::WalletAutomationStatus,
        updated_at: String
      }
    end
  end

  def test_list_executions
    skip("Mock server tests are disabled")

    response = @privy_api.wallet_automations.list_executions

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::WalletAutomationExecutionResponse
    end

    assert_pattern do
      row => {
        id: String,
        automation_attachment_id: String | nil,
        completed_at: String | nil,
        created_at: String,
        failed_at: String | nil,
        failure_reason: String | nil,
        status: Privy::WalletAutomationExecutionStatus,
        submitted_at: String | nil,
        trigger_asset_address: String,
        trigger_block_number: String,
        trigger_caip2: String,
        trigger_tx_hash: String,
        updated_at: String,
        wallet_action_id: String | nil,
        wallet_id: String
      }
    end
  end

  def test_reindex_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallet_automations.reindex(asset_address: "x")

    assert_pattern do
      response => Privy::WalletAutomationReindexResponse
    end

    assert_pattern do
      response => {
        results: ^(Privy::Internal::Type::ArrayOf[Privy::WalletAutomationReindexAssetResult]),
        wallet_id: String
      }
    end
  end
end
