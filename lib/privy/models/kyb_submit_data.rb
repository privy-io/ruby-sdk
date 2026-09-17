# frozen_string_literal: true

module Privy
  module Models
    class KYBSubmitData < Privy::Internal::Type::BaseModel
      # @!attribute account_purpose
      #   Primary purpose the business will use the account for. Passthrough to the
      #   provider. See the
      #   [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
      #   for accepted values.
      #
      #   @return [String, nil]
      optional :account_purpose, String

      # @!attribute account_purpose_other
      #   Free-text purpose. Required when account_purpose is "other".
      #
      #   @return [String, nil]
      optional :account_purpose_other, String

      # @!attribute acting_as_intermediary
      #   Whether the business moves funds on behalf of third parties.
      #
      #   @return [Boolean, nil]
      optional :acting_as_intermediary, Privy::Internal::Type::Boolean

      # @!attribute associated_persons
      #   Beneficial owners, control persons, and signers.
      #
      #   @return [Array<Privy::Models::KYBAssociatedPerson>, nil]
      optional :associated_persons, -> { Privy::Internal::Type::ArrayOf[Privy::KYBAssociatedPerson] }

      # @!attribute business_description
      #   Short summary of what the business does.
      #
      #   @return [String, nil]
      optional :business_description, String

      # @!attribute business_industry
      #   2022 NAICS codes describing the industries the business operates in.
      #
      #   @return [Array<String>, nil]
      optional :business_industry, Privy::Internal::Type::ArrayOf[String]

      # @!attribute business_legal_name
      #   Registered legal name as filed with government authorities.
      #
      #   @return [String, nil]
      optional :business_legal_name, String

      # @!attribute business_trade_name
      #   Public trading name (DBA), if different from the legal name.
      #
      #   @return [String, nil]
      optional :business_trade_name, String

      # @!attribute business_type
      #   Legal structure of the business. Passthrough to the provider. See the
      #   [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
      #   for accepted values.
      #
      #   @return [String, nil]
      optional :business_type, String

      # @!attribute compliance_screening_explanation
      #   Description of the AML and sanctions screening controls in place.
      #
      #   @return [String, nil]
      optional :compliance_screening_explanation, String

      # @!attribute conducts_money_services
      #   Whether the business conducts money services.
      #
      #   @return [Boolean, nil]
      optional :conducts_money_services, Privy::Internal::Type::Boolean

      # @!attribute conducts_money_services_description
      #   Description of the money services conducted.
      #
      #   @return [String, nil]
      optional :conducts_money_services_description, String

      # @!attribute conducts_money_services_using_bridge
      #   Whether money services are conducted through the provider. Requires a
      #   flow_of_funds document when true.
      #
      #   @return [Boolean, nil]
      optional :conducts_money_services_using_bridge, Privy::Internal::Type::Boolean

      # @!attribute documents
      #   Supporting documents for verification.
      #
      #   @return [Array<Privy::Models::KYBBusinessDocument>, nil]
      optional :documents, -> { Privy::Internal::Type::ArrayOf[Privy::KYBBusinessDocument] }

      # @!attribute email
      #   Primary business email address.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute estimated_annual_revenue_usd
      #   Estimated annual revenue of the business, in USD buckets. Passthrough to the
      #   provider. See the
      #   [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
      #   for accepted values.
      #
      #   @return [String, nil]
      optional :estimated_annual_revenue_usd, String

      # @!attribute expected_monthly_payments_usd
      #   Expected monthly payment volume in USD. Required for high-risk businesses.
      #
      #   @return [Integer, nil]
      optional :expected_monthly_payments_usd, Integer

      # @!attribute has_foreign_tax_registration
      #   Whether the business is tax-registered outside its country of incorporation.
      #
      #   @return [Boolean, nil]
      optional :has_foreign_tax_registration, Privy::Internal::Type::Boolean

      # @!attribute has_material_intermediary_ownership
      #   Whether an intermediate entity owner holds 25% or more of the business.
      #
      #   @return [Boolean, nil]
      optional :has_material_intermediary_ownership, Privy::Internal::Type::Boolean

      # @!attribute high_risk_activities
      #   High-risk activities the business engages in.
      #
      #   @return [Array<String>, nil]
      optional :high_risk_activities, Privy::Internal::Type::ArrayOf[String]

      # @!attribute high_risk_activities_explanation
      #   Explanation of the high-risk activities. Required unless the only value is
      #   "none_of_the_above".
      #
      #   @return [String, nil]
      optional :high_risk_activities_explanation, String

      # @!attribute identifying_information
      #   Business tax and registration identifiers.
      #
      #   @return [Array<Privy::Models::VerificationDocument>, nil]
      optional :identifying_information, -> { Privy::Internal::Type::ArrayOf[Privy::VerificationDocument] }

      # @!attribute incorporation_date
      #   Date of incorporation in YYYY-MM-DD format.
      #
      #   @return [String, nil]
      optional :incorporation_date, String

      # @!attribute is_dao
      #   Whether the business is a decentralized autonomous organization.
      #
      #   @return [Boolean, nil]
      optional :is_dao, Privy::Internal::Type::Boolean

      # @!attribute operates_in_prohibited_countries
      #   Whether the business operates in prohibited jurisdictions.
      #
      #   @return [Boolean, nil]
      optional :operates_in_prohibited_countries, Privy::Internal::Type::Boolean

      # @!attribute other_websites
      #   Additional websites and social handles.
      #
      #   @return [Array<String>, nil]
      optional :other_websites, Privy::Internal::Type::ArrayOf[String]

      # @!attribute ownership_threshold
      #   Ownership percentage at which a person is treated as a beneficial owner.
      #
      #   @return [Integer, nil]
      optional :ownership_threshold, Integer

      # @!attribute phone
      #   Business phone number in E.164 format.
      #
      #   @return [String, nil]
      optional :phone, String

      # @!attribute physical_address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress, nil]
      optional :physical_address, -> { Privy::VerificationAddress }

      # @!attribute primary_website
      #   Primary website. If omitted, a proof_of_nature_of_business document is required.
      #
      #   @return [String, nil]
      optional :primary_website, String

      # @!attribute publicly_traded_listings
      #   Public exchange listings for the business.
      #
      #   @return [Array<Privy::Models::KYBPubliclyTradedListing>, nil]
      optional :publicly_traded_listings, -> { Privy::Internal::Type::ArrayOf[Privy::KYBPubliclyTradedListing] }

      # @!attribute registered_address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress, nil]
      optional :registered_address, -> { Privy::VerificationAddress }

      # @!attribute regulated_activity
      #   Details of the regulated activity a business is licensed to perform.
      #
      #   @return [Privy::Models::KYBRegulatedActivity, nil]
      optional :regulated_activity, -> { Privy::KYBRegulatedActivity }

      # @!attribute source_of_funds
      #   Primary source of the funds the business will transact with. Passthrough to the
      #   provider. See the
      #   [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
      #   for accepted values.
      #
      #   @return [String, nil]
      optional :source_of_funds, String

      # @!attribute source_of_funds_description
      #   Free-text detail on the source of funds. Required for high-risk businesses.
      #
      #   @return [String, nil]
      optional :source_of_funds_description, String

      # @!attribute transliterated_business_legal_name
      #   Latin-1 transliteration of the legal name. Required for non-Latin-1 names.
      #
      #   @return [String, nil]
      optional :transliterated_business_legal_name, String

      # @!attribute transliterated_business_trade_name
      #   Latin-1 transliteration of the trade name. Required for non-Latin-1 names.
      #
      #   @return [String, nil]
      optional :transliterated_business_trade_name, String

      # @!attribute transliterated_physical_address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress, nil]
      optional :transliterated_physical_address, -> { Privy::VerificationAddress }

      # @!attribute transliterated_registered_address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress, nil]
      optional :transliterated_registered_address, -> { Privy::VerificationAddress }

      # @!method initialize(account_purpose: nil, account_purpose_other: nil, acting_as_intermediary: nil, associated_persons: nil, business_description: nil, business_industry: nil, business_legal_name: nil, business_trade_name: nil, business_type: nil, compliance_screening_explanation: nil, conducts_money_services: nil, conducts_money_services_description: nil, conducts_money_services_using_bridge: nil, documents: nil, email: nil, estimated_annual_revenue_usd: nil, expected_monthly_payments_usd: nil, has_foreign_tax_registration: nil, has_material_intermediary_ownership: nil, high_risk_activities: nil, high_risk_activities_explanation: nil, identifying_information: nil, incorporation_date: nil, is_dao: nil, operates_in_prohibited_countries: nil, other_websites: nil, ownership_threshold: nil, phone: nil, physical_address: nil, primary_website: nil, publicly_traded_listings: nil, registered_address: nil, regulated_activity: nil, source_of_funds: nil, source_of_funds_description: nil, transliterated_business_legal_name: nil, transliterated_business_trade_name: nil, transliterated_physical_address: nil, transliterated_registered_address: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KYBSubmitData} for more details.
      #
      #   KYB verification data for headless submission. Fields are individually optional
      #   because the provider accepts partial submissions and grants endorsements once
      #   enough data has arrived; a partial submission can be completed by calling the
      #   endpoint again.
      #
      #   @param account_purpose [String] Primary purpose the business will use the account for. Passthrough to the provid
      #
      #   @param account_purpose_other [String] Free-text purpose. Required when account_purpose is "other".
      #
      #   @param acting_as_intermediary [Boolean] Whether the business moves funds on behalf of third parties.
      #
      #   @param associated_persons [Array<Privy::Models::KYBAssociatedPerson>] Beneficial owners, control persons, and signers.
      #
      #   @param business_description [String] Short summary of what the business does.
      #
      #   @param business_industry [Array<String>] 2022 NAICS codes describing the industries the business operates in.
      #
      #   @param business_legal_name [String] Registered legal name as filed with government authorities.
      #
      #   @param business_trade_name [String] Public trading name (DBA), if different from the legal name.
      #
      #   @param business_type [String] Legal structure of the business. Passthrough to the provider. See the [Bridge cu
      #
      #   @param compliance_screening_explanation [String] Description of the AML and sanctions screening controls in place.
      #
      #   @param conducts_money_services [Boolean] Whether the business conducts money services.
      #
      #   @param conducts_money_services_description [String] Description of the money services conducted.
      #
      #   @param conducts_money_services_using_bridge [Boolean] Whether money services are conducted through the provider. Requires a flow_of_fu
      #
      #   @param documents [Array<Privy::Models::KYBBusinessDocument>] Supporting documents for verification.
      #
      #   @param email [String] Primary business email address.
      #
      #   @param estimated_annual_revenue_usd [String] Estimated annual revenue of the business, in USD buckets. Passthrough to the pro
      #
      #   @param expected_monthly_payments_usd [Integer] Expected monthly payment volume in USD. Required for high-risk businesses.
      #
      #   @param has_foreign_tax_registration [Boolean] Whether the business is tax-registered outside its country of incorporation.
      #
      #   @param has_material_intermediary_ownership [Boolean] Whether an intermediate entity owner holds 25% or more of the business.
      #
      #   @param high_risk_activities [Array<String>] High-risk activities the business engages in.
      #
      #   @param high_risk_activities_explanation [String] Explanation of the high-risk activities. Required unless the only value is "none
      #
      #   @param identifying_information [Array<Privy::Models::VerificationDocument>] Business tax and registration identifiers.
      #
      #   @param incorporation_date [String] Date of incorporation in YYYY-MM-DD format.
      #
      #   @param is_dao [Boolean] Whether the business is a decentralized autonomous organization.
      #
      #   @param operates_in_prohibited_countries [Boolean] Whether the business operates in prohibited jurisdictions.
      #
      #   @param other_websites [Array<String>] Additional websites and social handles.
      #
      #   @param ownership_threshold [Integer] Ownership percentage at which a person is treated as a beneficial owner.
      #
      #   @param phone [String] Business phone number in E.164 format.
      #
      #   @param physical_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
      #
      #   @param primary_website [String] Primary website. If omitted, a proof_of_nature_of_business document is required.
      #
      #   @param publicly_traded_listings [Array<Privy::Models::KYBPubliclyTradedListing>] Public exchange listings for the business.
      #
      #   @param registered_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
      #
      #   @param regulated_activity [Privy::Models::KYBRegulatedActivity] Details of the regulated activity a business is licensed to perform.
      #
      #   @param source_of_funds [String] Primary source of the funds the business will transact with. Passthrough to the
      #
      #   @param source_of_funds_description [String] Free-text detail on the source of funds. Required for high-risk businesses.
      #
      #   @param transliterated_business_legal_name [String] Latin-1 transliteration of the legal name. Required for non-Latin-1 names.
      #
      #   @param transliterated_business_trade_name [String] Latin-1 transliteration of the trade name. Required for non-Latin-1 names.
      #
      #   @param transliterated_physical_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
      #
      #   @param transliterated_registered_address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.
    end
  end
end
