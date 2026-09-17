# typed: strong

module Privy
  module Models
    class KYBSubmitData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KYBSubmitData, Privy::Internal::AnyHash) }

      # Primary purpose the business will use the account for. Passthrough to the
      # provider. See the
      # [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
      # for accepted values.
      sig { returns(T.nilable(String)) }
      attr_reader :account_purpose

      sig { params(account_purpose: String).void }
      attr_writer :account_purpose

      # Free-text purpose. Required when account_purpose is "other".
      sig { returns(T.nilable(String)) }
      attr_reader :account_purpose_other

      sig { params(account_purpose_other: String).void }
      attr_writer :account_purpose_other

      # Whether the business moves funds on behalf of third parties.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :acting_as_intermediary

      sig { params(acting_as_intermediary: T::Boolean).void }
      attr_writer :acting_as_intermediary

      # Beneficial owners, control persons, and signers.
      sig { returns(T.nilable(T::Array[Privy::KYBAssociatedPerson])) }
      attr_reader :associated_persons

      sig do
        params(
          associated_persons: T::Array[Privy::KYBAssociatedPerson::OrHash]
        ).void
      end
      attr_writer :associated_persons

      # Short summary of what the business does.
      sig { returns(T.nilable(String)) }
      attr_reader :business_description

      sig { params(business_description: String).void }
      attr_writer :business_description

      # 2022 NAICS codes describing the industries the business operates in.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :business_industry

      sig { params(business_industry: T::Array[String]).void }
      attr_writer :business_industry

      # Registered legal name as filed with government authorities.
      sig { returns(T.nilable(String)) }
      attr_reader :business_legal_name

      sig { params(business_legal_name: String).void }
      attr_writer :business_legal_name

      # Public trading name (DBA), if different from the legal name.
      sig { returns(T.nilable(String)) }
      attr_reader :business_trade_name

      sig { params(business_trade_name: String).void }
      attr_writer :business_trade_name

      # Legal structure of the business. Passthrough to the provider. See the
      # [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
      # for accepted values.
      sig { returns(T.nilable(String)) }
      attr_reader :business_type

      sig { params(business_type: String).void }
      attr_writer :business_type

      # Description of the AML and sanctions screening controls in place.
      sig { returns(T.nilable(String)) }
      attr_reader :compliance_screening_explanation

      sig { params(compliance_screening_explanation: String).void }
      attr_writer :compliance_screening_explanation

      # Whether the business conducts money services.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :conducts_money_services

      sig { params(conducts_money_services: T::Boolean).void }
      attr_writer :conducts_money_services

      # Description of the money services conducted.
      sig { returns(T.nilable(String)) }
      attr_reader :conducts_money_services_description

      sig { params(conducts_money_services_description: String).void }
      attr_writer :conducts_money_services_description

      # Whether money services are conducted through the provider. Requires a
      # flow_of_funds document when true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :conducts_money_services_using_bridge

      sig { params(conducts_money_services_using_bridge: T::Boolean).void }
      attr_writer :conducts_money_services_using_bridge

      # Supporting documents for verification.
      sig { returns(T.nilable(T::Array[Privy::KYBBusinessDocument])) }
      attr_reader :documents

      sig do
        params(documents: T::Array[Privy::KYBBusinessDocument::OrHash]).void
      end
      attr_writer :documents

      # Primary business email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Estimated annual revenue of the business, in USD buckets. Passthrough to the
      # provider. See the
      # [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
      # for accepted values.
      sig { returns(T.nilable(String)) }
      attr_reader :estimated_annual_revenue_usd

      sig { params(estimated_annual_revenue_usd: String).void }
      attr_writer :estimated_annual_revenue_usd

      # Expected monthly payment volume in USD. Required for high-risk businesses.
      sig { returns(T.nilable(Integer)) }
      attr_reader :expected_monthly_payments_usd

      sig { params(expected_monthly_payments_usd: Integer).void }
      attr_writer :expected_monthly_payments_usd

      # Whether the business is tax-registered outside its country of incorporation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_foreign_tax_registration

      sig { params(has_foreign_tax_registration: T::Boolean).void }
      attr_writer :has_foreign_tax_registration

      # Whether an intermediate entity owner holds 25% or more of the business.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_material_intermediary_ownership

      sig { params(has_material_intermediary_ownership: T::Boolean).void }
      attr_writer :has_material_intermediary_ownership

      # High-risk activities the business engages in.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :high_risk_activities

      sig { params(high_risk_activities: T::Array[String]).void }
      attr_writer :high_risk_activities

      # Explanation of the high-risk activities. Required unless the only value is
      # "none_of_the_above".
      sig { returns(T.nilable(String)) }
      attr_reader :high_risk_activities_explanation

      sig { params(high_risk_activities_explanation: String).void }
      attr_writer :high_risk_activities_explanation

      # Business tax and registration identifiers.
      sig { returns(T.nilable(T::Array[Privy::VerificationDocument])) }
      attr_reader :identifying_information

      sig do
        params(
          identifying_information: T::Array[Privy::VerificationDocument::OrHash]
        ).void
      end
      attr_writer :identifying_information

      # Date of incorporation in YYYY-MM-DD format.
      sig { returns(T.nilable(String)) }
      attr_reader :incorporation_date

      sig { params(incorporation_date: String).void }
      attr_writer :incorporation_date

      # Whether the business is a decentralized autonomous organization.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_dao

      sig { params(is_dao: T::Boolean).void }
      attr_writer :is_dao

      # Whether the business operates in prohibited jurisdictions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :operates_in_prohibited_countries

      sig { params(operates_in_prohibited_countries: T::Boolean).void }
      attr_writer :operates_in_prohibited_countries

      # Additional websites and social handles.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :other_websites

      sig { params(other_websites: T::Array[String]).void }
      attr_writer :other_websites

      # Ownership percentage at which a person is treated as a beneficial owner.
      sig { returns(T.nilable(Integer)) }
      attr_reader :ownership_threshold

      sig { params(ownership_threshold: Integer).void }
      attr_writer :ownership_threshold

      # Business phone number in E.164 format.
      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      # A postal address used in KYC and KYB data submission.
      sig { returns(T.nilable(Privy::VerificationAddress)) }
      attr_reader :physical_address

      sig { params(physical_address: Privy::VerificationAddress::OrHash).void }
      attr_writer :physical_address

      # Primary website. If omitted, a proof_of_nature_of_business document is required.
      sig { returns(T.nilable(String)) }
      attr_reader :primary_website

      sig { params(primary_website: String).void }
      attr_writer :primary_website

      # Public exchange listings for the business.
      sig { returns(T.nilable(T::Array[Privy::KYBPubliclyTradedListing])) }
      attr_reader :publicly_traded_listings

      sig do
        params(
          publicly_traded_listings:
            T::Array[Privy::KYBPubliclyTradedListing::OrHash]
        ).void
      end
      attr_writer :publicly_traded_listings

      # A postal address used in KYC and KYB data submission.
      sig { returns(T.nilable(Privy::VerificationAddress)) }
      attr_reader :registered_address

      sig do
        params(registered_address: Privy::VerificationAddress::OrHash).void
      end
      attr_writer :registered_address

      # Details of the regulated activity a business is licensed to perform.
      sig { returns(T.nilable(Privy::KYBRegulatedActivity)) }
      attr_reader :regulated_activity

      sig do
        params(regulated_activity: Privy::KYBRegulatedActivity::OrHash).void
      end
      attr_writer :regulated_activity

      # Primary source of the funds the business will transact with. Passthrough to the
      # provider. See the
      # [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
      # for accepted values.
      sig { returns(T.nilable(String)) }
      attr_reader :source_of_funds

      sig { params(source_of_funds: String).void }
      attr_writer :source_of_funds

      # Free-text detail on the source of funds. Required for high-risk businesses.
      sig { returns(T.nilable(String)) }
      attr_reader :source_of_funds_description

      sig { params(source_of_funds_description: String).void }
      attr_writer :source_of_funds_description

      # Latin-1 transliteration of the legal name. Required for non-Latin-1 names.
      sig { returns(T.nilable(String)) }
      attr_reader :transliterated_business_legal_name

      sig { params(transliterated_business_legal_name: String).void }
      attr_writer :transliterated_business_legal_name

      # Latin-1 transliteration of the trade name. Required for non-Latin-1 names.
      sig { returns(T.nilable(String)) }
      attr_reader :transliterated_business_trade_name

      sig { params(transliterated_business_trade_name: String).void }
      attr_writer :transliterated_business_trade_name

      # A postal address used in KYC and KYB data submission.
      sig { returns(T.nilable(Privy::VerificationAddress)) }
      attr_reader :transliterated_physical_address

      sig do
        params(
          transliterated_physical_address: Privy::VerificationAddress::OrHash
        ).void
      end
      attr_writer :transliterated_physical_address

      # A postal address used in KYC and KYB data submission.
      sig { returns(T.nilable(Privy::VerificationAddress)) }
      attr_reader :transliterated_registered_address

      sig do
        params(
          transliterated_registered_address: Privy::VerificationAddress::OrHash
        ).void
      end
      attr_writer :transliterated_registered_address

      # KYB verification data for headless submission. Fields are individually optional
      # because the provider accepts partial submissions and grants endorsements once
      # enough data has arrived; a partial submission can be completed by calling the
      # endpoint again.
      sig do
        params(
          account_purpose: String,
          account_purpose_other: String,
          acting_as_intermediary: T::Boolean,
          associated_persons: T::Array[Privy::KYBAssociatedPerson::OrHash],
          business_description: String,
          business_industry: T::Array[String],
          business_legal_name: String,
          business_trade_name: String,
          business_type: String,
          compliance_screening_explanation: String,
          conducts_money_services: T::Boolean,
          conducts_money_services_description: String,
          conducts_money_services_using_bridge: T::Boolean,
          documents: T::Array[Privy::KYBBusinessDocument::OrHash],
          email: String,
          estimated_annual_revenue_usd: String,
          expected_monthly_payments_usd: Integer,
          has_foreign_tax_registration: T::Boolean,
          has_material_intermediary_ownership: T::Boolean,
          high_risk_activities: T::Array[String],
          high_risk_activities_explanation: String,
          identifying_information:
            T::Array[Privy::VerificationDocument::OrHash],
          incorporation_date: String,
          is_dao: T::Boolean,
          operates_in_prohibited_countries: T::Boolean,
          other_websites: T::Array[String],
          ownership_threshold: Integer,
          phone: String,
          physical_address: Privy::VerificationAddress::OrHash,
          primary_website: String,
          publicly_traded_listings:
            T::Array[Privy::KYBPubliclyTradedListing::OrHash],
          registered_address: Privy::VerificationAddress::OrHash,
          regulated_activity: Privy::KYBRegulatedActivity::OrHash,
          source_of_funds: String,
          source_of_funds_description: String,
          transliterated_business_legal_name: String,
          transliterated_business_trade_name: String,
          transliterated_physical_address: Privy::VerificationAddress::OrHash,
          transliterated_registered_address: Privy::VerificationAddress::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Primary purpose the business will use the account for. Passthrough to the
        # provider. See the
        # [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
        # for accepted values.
        account_purpose: nil,
        # Free-text purpose. Required when account_purpose is "other".
        account_purpose_other: nil,
        # Whether the business moves funds on behalf of third parties.
        acting_as_intermediary: nil,
        # Beneficial owners, control persons, and signers.
        associated_persons: nil,
        # Short summary of what the business does.
        business_description: nil,
        # 2022 NAICS codes describing the industries the business operates in.
        business_industry: nil,
        # Registered legal name as filed with government authorities.
        business_legal_name: nil,
        # Public trading name (DBA), if different from the legal name.
        business_trade_name: nil,
        # Legal structure of the business. Passthrough to the provider. See the
        # [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
        # for accepted values.
        business_type: nil,
        # Description of the AML and sanctions screening controls in place.
        compliance_screening_explanation: nil,
        # Whether the business conducts money services.
        conducts_money_services: nil,
        # Description of the money services conducted.
        conducts_money_services_description: nil,
        # Whether money services are conducted through the provider. Requires a
        # flow_of_funds document when true.
        conducts_money_services_using_bridge: nil,
        # Supporting documents for verification.
        documents: nil,
        # Primary business email address.
        email: nil,
        # Estimated annual revenue of the business, in USD buckets. Passthrough to the
        # provider. See the
        # [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
        # for accepted values.
        estimated_annual_revenue_usd: nil,
        # Expected monthly payment volume in USD. Required for high-risk businesses.
        expected_monthly_payments_usd: nil,
        # Whether the business is tax-registered outside its country of incorporation.
        has_foreign_tax_registration: nil,
        # Whether an intermediate entity owner holds 25% or more of the business.
        has_material_intermediary_ownership: nil,
        # High-risk activities the business engages in.
        high_risk_activities: nil,
        # Explanation of the high-risk activities. Required unless the only value is
        # "none_of_the_above".
        high_risk_activities_explanation: nil,
        # Business tax and registration identifiers.
        identifying_information: nil,
        # Date of incorporation in YYYY-MM-DD format.
        incorporation_date: nil,
        # Whether the business is a decentralized autonomous organization.
        is_dao: nil,
        # Whether the business operates in prohibited jurisdictions.
        operates_in_prohibited_countries: nil,
        # Additional websites and social handles.
        other_websites: nil,
        # Ownership percentage at which a person is treated as a beneficial owner.
        ownership_threshold: nil,
        # Business phone number in E.164 format.
        phone: nil,
        # A postal address used in KYC and KYB data submission.
        physical_address: nil,
        # Primary website. If omitted, a proof_of_nature_of_business document is required.
        primary_website: nil,
        # Public exchange listings for the business.
        publicly_traded_listings: nil,
        # A postal address used in KYC and KYB data submission.
        registered_address: nil,
        # Details of the regulated activity a business is licensed to perform.
        regulated_activity: nil,
        # Primary source of the funds the business will transact with. Passthrough to the
        # provider. See the
        # [Bridge customer API reference](https://apidocs.bridge.xyz/platform/customers/customers/api)
        # for accepted values.
        source_of_funds: nil,
        # Free-text detail on the source of funds. Required for high-risk businesses.
        source_of_funds_description: nil,
        # Latin-1 transliteration of the legal name. Required for non-Latin-1 names.
        transliterated_business_legal_name: nil,
        # Latin-1 transliteration of the trade name. Required for non-Latin-1 names.
        transliterated_business_trade_name: nil,
        # A postal address used in KYC and KYB data submission.
        transliterated_physical_address: nil,
        # A postal address used in KYC and KYB data submission.
        transliterated_registered_address: nil
      )
      end

      sig do
        override.returns(
          {
            account_purpose: String,
            account_purpose_other: String,
            acting_as_intermediary: T::Boolean,
            associated_persons: T::Array[Privy::KYBAssociatedPerson],
            business_description: String,
            business_industry: T::Array[String],
            business_legal_name: String,
            business_trade_name: String,
            business_type: String,
            compliance_screening_explanation: String,
            conducts_money_services: T::Boolean,
            conducts_money_services_description: String,
            conducts_money_services_using_bridge: T::Boolean,
            documents: T::Array[Privy::KYBBusinessDocument],
            email: String,
            estimated_annual_revenue_usd: String,
            expected_monthly_payments_usd: Integer,
            has_foreign_tax_registration: T::Boolean,
            has_material_intermediary_ownership: T::Boolean,
            high_risk_activities: T::Array[String],
            high_risk_activities_explanation: String,
            identifying_information: T::Array[Privy::VerificationDocument],
            incorporation_date: String,
            is_dao: T::Boolean,
            operates_in_prohibited_countries: T::Boolean,
            other_websites: T::Array[String],
            ownership_threshold: Integer,
            phone: String,
            physical_address: Privy::VerificationAddress,
            primary_website: String,
            publicly_traded_listings: T::Array[Privy::KYBPubliclyTradedListing],
            registered_address: Privy::VerificationAddress,
            regulated_activity: Privy::KYBRegulatedActivity,
            source_of_funds: String,
            source_of_funds_description: String,
            transliterated_business_legal_name: String,
            transliterated_business_trade_name: String,
            transliterated_physical_address: Privy::VerificationAddress,
            transliterated_registered_address: Privy::VerificationAddress
          }
        )
      end
      def to_hash
      end
    end
  end
end
