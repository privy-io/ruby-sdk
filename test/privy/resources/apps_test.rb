# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::AppsTest < Privy::Test::ResourceTest
  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.apps.get("app_id")

    assert_pattern do
      response => Privy::AppResponse
    end

    assert_pattern do
      response => {
        id: String,
        accent_color: String | nil,
        allowed_domains: ^(Privy::Internal::Type::ArrayOf[String]),
        allowed_native_app_ids: ^(Privy::Internal::Type::ArrayOf[String]),
        allowed_native_app_url_schemes: ^(Privy::Internal::Type::ArrayOf[String]),
        allowlist_config: Privy::AppAllowlistConfig,
        allowlist_enabled: Privy::Internal::Type::Boolean,
        apple_oauth: Privy::Internal::Type::Boolean,
        captcha_enabled: Privy::Internal::Type::Boolean,
        custom_api_url: String | nil,
        custom_jwt_auth: Privy::Internal::Type::Boolean,
        custom_oauth_providers: ^(Privy::Internal::Type::ArrayOf[Privy::AppCustomOAuthProvider]),
        data_classification: Privy::AppResponse::DataClassification,
        disable_plus_emails: Privy::Internal::Type::Boolean,
        discord_oauth: Privy::Internal::Type::Boolean,
        email_auth: Privy::Internal::Type::Boolean,
        embedded_wallet_config: Privy::EmbeddedWalletConfigSchema,
        enabled_captcha_provider: Privy::AppResponse::EnabledCaptchaProvider | nil,
        enforce_wallet_uis: Privy::Internal::Type::Boolean,
        farcaster_auth: Privy::Internal::Type::Boolean,
        farcaster_link_wallets_enabled: Privy::Internal::Type::Boolean,
        fiat_on_ramp_enabled: Privy::Internal::Type::Boolean,
        github_oauth: Privy::Internal::Type::Boolean,
        google_oauth: Privy::Internal::Type::Boolean,
        guest_auth: Privy::Internal::Type::Boolean,
        icon_url: String | nil,
        instagram_oauth: Privy::Internal::Type::Boolean,
        legacy_wallet_ui_config: Privy::Internal::Type::Boolean,
        line_oauth: Privy::Internal::Type::Boolean,
        linkedin_oauth: Privy::Internal::Type::Boolean,
        logo_url: String | nil,
        max_linked_wallets_per_user: Float | nil,
        merge_accounts_by_email: Privy::Internal::Type::Boolean,
        mfa_methods: ^(Privy::Internal::Type::ArrayOf[enum: Privy::AppResponse::MfaMethod]),
        name: String,
        passkey_auth: Privy::Internal::Type::Boolean,
        passkeys_for_signup_enabled: Privy::Internal::Type::Boolean,
        privacy_policy_url: String | nil,
        require_users_accept_terms: Privy::Internal::Type::Boolean | nil,
        show_wallet_login_first: Privy::Internal::Type::Boolean,
        smart_wallet_config: Privy::SmartWalletConfiguration,
        sms_auth: Privy::Internal::Type::Boolean,
        solana_wallet_auth: Privy::Internal::Type::Boolean,
        spotify_oauth: Privy::Internal::Type::Boolean,
        telegram_auth: Privy::Internal::Type::Boolean,
        telegram_oauth: Privy::Internal::Type::Boolean,
        terms_and_conditions_url: String | nil,
        theme: String,
        tiktok_oauth: Privy::Internal::Type::Boolean,
        twitch_oauth: Privy::Internal::Type::Boolean,
        twitter_oauth: Privy::Internal::Type::Boolean,
        twitter_oauth_on_mobile_enabled: Privy::Internal::Type::Boolean,
        verification_key: String,
        wallet_auth: Privy::Internal::Type::Boolean,
        wallet_connect_cloud_project_id: String | nil,
        whatsapp_enabled: Privy::Internal::Type::Boolean,
        captcha_site_key: String | nil,
        funding_config: Privy::FundingConfigResponseSchema | nil,
        telegram_auth_config: Privy::TelegramAuthConfigSchema | nil
      }
    end
  end

  def test_get_gas_spend_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.apps.get_gas_spend(end_timestamp: 0, start_timestamp: 0, wallet_ids: ["string"])

    assert_pattern do
      response => Privy::GasSpendResponseBody
    end

    assert_pattern do
      response => {
        currency: Privy::GasSpendCurrency,
        value: String
      }
    end
  end

  def test_get_test_credentials
    skip("Mock server tests are disabled")

    response = @privy_api.apps.get_test_credentials("app_id")

    assert_pattern do
      response => Privy::TestAccountsResponse
    end

    assert_pattern do
      response => {
        data: ^(Privy::Internal::Type::ArrayOf[Privy::TestAccount])
      }
    end
  end
end
