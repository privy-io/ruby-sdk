# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::UsersTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.create(linked_accounts: [{address: "tom.bombadill@privy.io", type: :email}])

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.users.list

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::User
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @privy_api.users.delete("user_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.users.get("user_id")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_custom_auth_id_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_custom_auth_id(custom_user_id: "custom_user_id")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_discord_username_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_discord_username(username: "username")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_email_address_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_email_address(address: "dev@stainless.com")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_farcaster_id_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_farcaster_id(fid: 0)

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_github_username_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_github_username(username: "username")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_phone_number_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_phone_number(number: "number")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_smart_wallet_address_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_smart_wallet_address(address: "address")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_telegram_user_id_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_telegram_user_id(telegram_user_id: "telegram_user_id")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_telegram_username_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_telegram_username(username: "username")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_twitter_subject_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_twitter_subject(subject: "subject")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_twitter_username_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_twitter_username(username: "username")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_get_by_wallet_address_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.get_by_wallet_address(address: "address")

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_pregenerate_wallets_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.pregenerate_wallets("user_id", wallets: [{chain_type: :ethereum}])

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_search_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.search(body: {searchTerm: "searchTerm"})

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_set_custom_metadata_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.set_custom_metadata("user_id", custom_metadata: {key: "value"})

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end

  def test_unlink_linked_account_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.unlink_linked_account("user_id", handle: "test@test.com", type: :email)

    assert_pattern do
      response => Privy::User
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        has_accepted_terms: Privy::Internal::Type::Boolean,
        is_guest: Privy::Internal::Type::Boolean,
        linked_accounts: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount]),
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod]),
        custom_metadata: ^(Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem]) | nil
      }
    end
  end
end
