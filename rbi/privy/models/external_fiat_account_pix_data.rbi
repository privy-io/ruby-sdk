# typed: strong

module Privy
  module Models
    class ExternalFiatAccountPixData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExternalFiatAccountPixData, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::ExternalFiatAccountPixData::Type::OrSymbol) }
      attr_accessor :type

      # The Pix "copia e cola" (copy and paste) BR Code.
      sig { returns(T.nilable(String)) }
      attr_reader :br_code

      sig { params(br_code: String).void }
      attr_writer :br_code

      # Optional CPF/CNPJ associated with the account, digits only.
      sig { returns(T.nilable(String)) }
      attr_reader :document_number

      sig { params(document_number: String).void }
      attr_writer :document_number

      # The Pix key: an EVP (UUID), CPF, CNPJ, Brazilian phone number (+55…), or email
      # address.
      sig { returns(T.nilable(String)) }
      attr_reader :pix_key

      sig { params(pix_key: String).void }
      attr_writer :pix_key

      # Brazilian Pix account data for an external fiat account. Provide exactly one of
      # `pix_key` or `br_code`.
      sig do
        params(
          type: Privy::ExternalFiatAccountPixData::Type::OrSymbol,
          br_code: String,
          document_number: String,
          pix_key: String
        ).returns(T.attached_class)
      end
      def self.new(
        type:,
        # The Pix "copia e cola" (copy and paste) BR Code.
        br_code: nil,
        # Optional CPF/CNPJ associated with the account, digits only.
        document_number: nil,
        # The Pix key: an EVP (UUID), CPF, CNPJ, Brazilian phone number (+55…), or email
        # address.
        pix_key: nil
      )
      end

      sig do
        override.returns(
          {
            type: Privy::ExternalFiatAccountPixData::Type::OrSymbol,
            br_code: String,
            document_number: String,
            pix_key: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExternalFiatAccountPixData::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PIX = T.let(:pix, Privy::ExternalFiatAccountPixData::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::ExternalFiatAccountPixData::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
