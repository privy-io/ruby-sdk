# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Apps#get
    class AppResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute accent_color
      #
      #   @return [String, nil]
      required :accent_color, String, nil?: true

      # @!attribute allowed_domains
      #
      #   @return [Array<String>]
      required :allowed_domains, Privy::Internal::Type::ArrayOf[String]

      # @!attribute allowed_native_app_ids
      #
      #   @return [Array<String>]
      required :allowed_native_app_ids, Privy::Internal::Type::ArrayOf[String]

      # @!attribute allowed_native_app_url_schemes
      #
      #   @return [Array<String>]
      required :allowed_native_app_url_schemes, Privy::Internal::Type::ArrayOf[String]

      # @!attribute allowlist_config
      #
      #   @return [Privy::Models::AppResponse::AllowlistConfig]
      required :allowlist_config, -> { Privy::AppResponse::AllowlistConfig }

      # @!attribute allowlist_enabled
      #
      #   @return [Boolean]
      required :allowlist_enabled, Privy::Internal::Type::Boolean

      # @!attribute apple_oauth
      #
      #   @return [Boolean]
      required :apple_oauth, Privy::Internal::Type::Boolean

      # @!attribute captcha_enabled
      #
      #   @return [Boolean]
      required :captcha_enabled, Privy::Internal::Type::Boolean

      # @!attribute custom_api_url
      #
      #   @return [String, nil]
      required :custom_api_url, String, nil?: true

      # @!attribute custom_jwt_auth
      #
      #   @return [Boolean]
      required :custom_jwt_auth, Privy::Internal::Type::Boolean

      # @!attribute custom_oauth_providers
      #
      #   @return [Array<Privy::Models::AppResponse::CustomOAuthProvider>]
      required :custom_oauth_providers,
               -> { Privy::Internal::Type::ArrayOf[Privy::AppResponse::CustomOAuthProvider] }

      # @!attribute data_classification
      #   Indicates that this response contains only publicly accessible data, not a
      #   privileged resource
      #
      #   @return [Symbol, Privy::Models::AppResponse::DataClassification]
      required :data_classification, enum: -> { Privy::AppResponse::DataClassification }

      # @!attribute disable_plus_emails
      #
      #   @return [Boolean]
      required :disable_plus_emails, Privy::Internal::Type::Boolean

      # @!attribute discord_oauth
      #
      #   @return [Boolean]
      required :discord_oauth, Privy::Internal::Type::Boolean

      # @!attribute email_auth
      #
      #   @return [Boolean]
      required :email_auth, Privy::Internal::Type::Boolean

      # @!attribute embedded_wallet_config
      #   Configuration for embedded wallets including the mode.
      #
      #   @return [Privy::Models::EmbeddedWalletConfigSchema]
      required :embedded_wallet_config, -> { Privy::EmbeddedWalletConfigSchema }

      # @!attribute enabled_captcha_provider
      #
      #   @return [Symbol, Privy::Models::AppResponse::EnabledCaptchaProvider, nil]
      required :enabled_captcha_provider, enum: -> { Privy::AppResponse::EnabledCaptchaProvider }, nil?: true

      # @!attribute enforce_wallet_uis
      #
      #   @return [Boolean]
      required :enforce_wallet_uis, Privy::Internal::Type::Boolean

      # @!attribute farcaster_auth
      #
      #   @return [Boolean]
      required :farcaster_auth, Privy::Internal::Type::Boolean

      # @!attribute farcaster_link_wallets_enabled
      #
      #   @return [Boolean]
      required :farcaster_link_wallets_enabled, Privy::Internal::Type::Boolean

      # @!attribute fiat_on_ramp_enabled
      #
      #   @return [Boolean]
      required :fiat_on_ramp_enabled, Privy::Internal::Type::Boolean

      # @!attribute github_oauth
      #
      #   @return [Boolean]
      required :github_oauth, Privy::Internal::Type::Boolean

      # @!attribute google_oauth
      #
      #   @return [Boolean]
      required :google_oauth, Privy::Internal::Type::Boolean

      # @!attribute guest_auth
      #
      #   @return [Boolean]
      required :guest_auth, Privy::Internal::Type::Boolean

      # @!attribute icon_url
      #
      #   @return [String, nil]
      required :icon_url, String, nil?: true

      # @!attribute instagram_oauth
      #
      #   @return [Boolean]
      required :instagram_oauth, Privy::Internal::Type::Boolean

      # @!attribute legacy_wallet_ui_config
      #
      #   @return [Boolean]
      required :legacy_wallet_ui_config, Privy::Internal::Type::Boolean

      # @!attribute line_oauth
      #
      #   @return [Boolean]
      required :line_oauth, Privy::Internal::Type::Boolean

      # @!attribute linkedin_oauth
      #
      #   @return [Boolean]
      required :linkedin_oauth, Privy::Internal::Type::Boolean

      # @!attribute logo_url
      #
      #   @return [String, nil]
      required :logo_url, String, nil?: true

      # @!attribute max_linked_wallets_per_user
      #
      #   @return [Float, nil]
      required :max_linked_wallets_per_user, Float, nil?: true

      # @!attribute mfa_methods
      #
      #   @return [Array<Symbol, Privy::Models::AppResponse::MfaMethod>]
      required :mfa_methods, -> { Privy::Internal::Type::ArrayOf[enum: Privy::AppResponse::MfaMethod] }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute passkey_auth
      #
      #   @return [Boolean]
      required :passkey_auth, Privy::Internal::Type::Boolean

      # @!attribute passkeys_for_signup_enabled
      #
      #   @return [Boolean]
      required :passkeys_for_signup_enabled, Privy::Internal::Type::Boolean

      # @!attribute privacy_policy_url
      #
      #   @return [String, nil]
      required :privacy_policy_url, String, nil?: true

      # @!attribute require_users_accept_terms
      #
      #   @return [Boolean, nil]
      required :require_users_accept_terms, Privy::Internal::Type::Boolean, nil?: true

      # @!attribute show_wallet_login_first
      #
      #   @return [Boolean]
      required :show_wallet_login_first, Privy::Internal::Type::Boolean

      # @!attribute smart_wallet_config
      #   The configuration object for smart wallets.
      #
      #   @return [Privy::Models::SmartWalletConfigurationDisabled, Privy::Models::SmartWalletConfigurationEnabled]
      required :smart_wallet_config, union: -> { Privy::SmartWalletConfiguration }

      # @!attribute sms_auth
      #
      #   @return [Boolean]
      required :sms_auth, Privy::Internal::Type::Boolean

      # @!attribute solana_wallet_auth
      #
      #   @return [Boolean]
      required :solana_wallet_auth, Privy::Internal::Type::Boolean

      # @!attribute spotify_oauth
      #
      #   @return [Boolean]
      required :spotify_oauth, Privy::Internal::Type::Boolean

      # @!attribute telegram_auth
      #
      #   @return [Boolean]
      required :telegram_auth, Privy::Internal::Type::Boolean

      # @!attribute terms_and_conditions_url
      #
      #   @return [String, nil]
      required :terms_and_conditions_url, String, nil?: true

      # @!attribute theme
      #
      #   @return [String]
      required :theme, String

      # @!attribute tiktok_oauth
      #
      #   @return [Boolean]
      required :tiktok_oauth, Privy::Internal::Type::Boolean

      # @!attribute twitch_oauth
      #
      #   @return [Boolean]
      required :twitch_oauth, Privy::Internal::Type::Boolean

      # @!attribute twitter_oauth
      #
      #   @return [Boolean]
      required :twitter_oauth, Privy::Internal::Type::Boolean

      # @!attribute twitter_oauth_on_mobile_enabled
      #
      #   @return [Boolean]
      required :twitter_oauth_on_mobile_enabled, Privy::Internal::Type::Boolean

      # @!attribute verification_key
      #
      #   @return [String]
      required :verification_key, String

      # @!attribute wallet_auth
      #
      #   @return [Boolean]
      required :wallet_auth, Privy::Internal::Type::Boolean

      # @!attribute wallet_connect_cloud_project_id
      #
      #   @return [String, nil]
      required :wallet_connect_cloud_project_id, String, nil?: true

      # @!attribute whatsapp_enabled
      #
      #   @return [Boolean]
      required :whatsapp_enabled, Privy::Internal::Type::Boolean

      # @!attribute captcha_site_key
      #
      #   @return [String, nil]
      optional :captcha_site_key, String

      # @!attribute funding_config
      #   Configuration for funding and on-ramp options.
      #
      #   @return [Privy::Models::FundingConfigResponseSchema, nil]
      optional :funding_config, -> { Privy::FundingConfigResponseSchema }

      # @!attribute telegram_auth_config
      #   Configuration for Telegram authentication.
      #
      #   @return [Privy::Models::TelegramAuthConfigSchema, nil]
      optional :telegram_auth_config, -> { Privy::TelegramAuthConfigSchema }

      # @!method initialize(id:, accent_color:, allowed_domains:, allowed_native_app_ids:, allowed_native_app_url_schemes:, allowlist_config:, allowlist_enabled:, apple_oauth:, captcha_enabled:, custom_api_url:, custom_jwt_auth:, custom_oauth_providers:, data_classification:, disable_plus_emails:, discord_oauth:, email_auth:, embedded_wallet_config:, enabled_captcha_provider:, enforce_wallet_uis:, farcaster_auth:, farcaster_link_wallets_enabled:, fiat_on_ramp_enabled:, github_oauth:, google_oauth:, guest_auth:, icon_url:, instagram_oauth:, legacy_wallet_ui_config:, line_oauth:, linkedin_oauth:, logo_url:, max_linked_wallets_per_user:, mfa_methods:, name:, passkey_auth:, passkeys_for_signup_enabled:, privacy_policy_url:, require_users_accept_terms:, show_wallet_login_first:, smart_wallet_config:, sms_auth:, solana_wallet_auth:, spotify_oauth:, telegram_auth:, terms_and_conditions_url:, theme:, tiktok_oauth:, twitch_oauth:, twitter_oauth:, twitter_oauth_on_mobile_enabled:, verification_key:, wallet_auth:, wallet_connect_cloud_project_id:, whatsapp_enabled:, captcha_site_key: nil, funding_config: nil, telegram_auth_config: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AppResponse} for more details.
      #
      #   The response for getting an app.
      #
      #   @param id [String]
      #
      #   @param accent_color [String, nil]
      #
      #   @param allowed_domains [Array<String>]
      #
      #   @param allowed_native_app_ids [Array<String>]
      #
      #   @param allowed_native_app_url_schemes [Array<String>]
      #
      #   @param allowlist_config [Privy::Models::AppResponse::AllowlistConfig]
      #
      #   @param allowlist_enabled [Boolean]
      #
      #   @param apple_oauth [Boolean]
      #
      #   @param captcha_enabled [Boolean]
      #
      #   @param custom_api_url [String, nil]
      #
      #   @param custom_jwt_auth [Boolean]
      #
      #   @param custom_oauth_providers [Array<Privy::Models::AppResponse::CustomOAuthProvider>]
      #
      #   @param data_classification [Symbol, Privy::Models::AppResponse::DataClassification] Indicates that this response contains only publicly accessible data, not a privi
      #
      #   @param disable_plus_emails [Boolean]
      #
      #   @param discord_oauth [Boolean]
      #
      #   @param email_auth [Boolean]
      #
      #   @param embedded_wallet_config [Privy::Models::EmbeddedWalletConfigSchema] Configuration for embedded wallets including the mode.
      #
      #   @param enabled_captcha_provider [Symbol, Privy::Models::AppResponse::EnabledCaptchaProvider, nil]
      #
      #   @param enforce_wallet_uis [Boolean]
      #
      #   @param farcaster_auth [Boolean]
      #
      #   @param farcaster_link_wallets_enabled [Boolean]
      #
      #   @param fiat_on_ramp_enabled [Boolean]
      #
      #   @param github_oauth [Boolean]
      #
      #   @param google_oauth [Boolean]
      #
      #   @param guest_auth [Boolean]
      #
      #   @param icon_url [String, nil]
      #
      #   @param instagram_oauth [Boolean]
      #
      #   @param legacy_wallet_ui_config [Boolean]
      #
      #   @param line_oauth [Boolean]
      #
      #   @param linkedin_oauth [Boolean]
      #
      #   @param logo_url [String, nil]
      #
      #   @param max_linked_wallets_per_user [Float, nil]
      #
      #   @param mfa_methods [Array<Symbol, Privy::Models::AppResponse::MfaMethod>]
      #
      #   @param name [String]
      #
      #   @param passkey_auth [Boolean]
      #
      #   @param passkeys_for_signup_enabled [Boolean]
      #
      #   @param privacy_policy_url [String, nil]
      #
      #   @param require_users_accept_terms [Boolean, nil]
      #
      #   @param show_wallet_login_first [Boolean]
      #
      #   @param smart_wallet_config [Privy::Models::SmartWalletConfigurationDisabled, Privy::Models::SmartWalletConfigurationEnabled] The configuration object for smart wallets.
      #
      #   @param sms_auth [Boolean]
      #
      #   @param solana_wallet_auth [Boolean]
      #
      #   @param spotify_oauth [Boolean]
      #
      #   @param telegram_auth [Boolean]
      #
      #   @param terms_and_conditions_url [String, nil]
      #
      #   @param theme [String]
      #
      #   @param tiktok_oauth [Boolean]
      #
      #   @param twitch_oauth [Boolean]
      #
      #   @param twitter_oauth [Boolean]
      #
      #   @param twitter_oauth_on_mobile_enabled [Boolean]
      #
      #   @param verification_key [String]
      #
      #   @param wallet_auth [Boolean]
      #
      #   @param wallet_connect_cloud_project_id [String, nil]
      #
      #   @param whatsapp_enabled [Boolean]
      #
      #   @param captcha_site_key [String]
      #
      #   @param funding_config [Privy::Models::FundingConfigResponseSchema] Configuration for funding and on-ramp options.
      #
      #   @param telegram_auth_config [Privy::Models::TelegramAuthConfigSchema] Configuration for Telegram authentication.

      # @see Privy::Models::AppResponse#allowlist_config
      class AllowlistConfig < Privy::Internal::Type::BaseModel
        # @!attribute cta_link
        #
        #   @return [String, nil]
        required :cta_link, String, nil?: true

        # @!attribute cta_text
        #
        #   @return [String, nil]
        required :cta_text, String, nil?: true

        # @!attribute error_detail
        #
        #   @return [String, nil]
        required :error_detail, String, nil?: true

        # @!attribute error_title
        #
        #   @return [String, nil]
        required :error_title, String, nil?: true

        # @!method initialize(cta_link:, cta_text:, error_detail:, error_title:)
        #   @param cta_link [String, nil]
        #   @param cta_text [String, nil]
        #   @param error_detail [String, nil]
        #   @param error_title [String, nil]
      end

      class CustomOAuthProvider < Privy::Internal::Type::BaseModel
        # @!attribute enabled
        #
        #   @return [Boolean]
        required :enabled, Privy::Internal::Type::Boolean

        # @!attribute provider
        #   The ID of a custom OAuth provider, set up for this app. Must start with
        #   "custom:".
        #
        #   @return [String]
        required :provider, String

        # @!attribute provider_display_name
        #
        #   @return [String]
        required :provider_display_name, String

        # @!attribute provider_icon_url
        #
        #   @return [String]
        required :provider_icon_url, String

        # @!method initialize(enabled:, provider:, provider_display_name:, provider_icon_url:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::AppResponse::CustomOAuthProvider} for more details.
        #
        #   @param enabled [Boolean]
        #
        #   @param provider [String] The ID of a custom OAuth provider, set up for this app. Must start with "custom:
        #
        #   @param provider_display_name [String]
        #
        #   @param provider_icon_url [String]
      end

      # Indicates that this response contains only publicly accessible data, not a
      # privileged resource
      #
      # @see Privy::Models::AppResponse#data_classification
      module DataClassification
        extend Privy::Internal::Type::Enum

        PUBLIC = :public

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::AppResponse#enabled_captcha_provider
      module EnabledCaptchaProvider
        extend Privy::Internal::Type::Enum

        TURNSTILE = :turnstile
        HCAPTCHA = :hcaptcha

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module MfaMethod
        extend Privy::Internal::Type::Enum

        SMS = :sms
        TOTP = :totp
        PASSKEY = :passkey

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
