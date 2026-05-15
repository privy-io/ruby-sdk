# typed: strong

module Privy
  module Models
    class Transaction < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::Transaction, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(Float) }
      attr_accessor :created_at

      sig { returns(Privy::Transaction::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_hash

      sig { returns(String) }
      attr_accessor :wallet_id

      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sponsored

      sig { params(sponsored: T::Boolean).void }
      attr_writer :sponsored

      sig { returns(T.nilable(String)) }
      attr_reader :user_operation_hash

      sig { params(user_operation_hash: String).void }
      attr_writer :user_operation_hash

      # A transaction from a Privy wallet.
      sig do
        params(
          id: String,
          caip2: String,
          created_at: Float,
          status: Privy::Transaction::Status::OrSymbol,
          transaction_hash: T.nilable(String),
          wallet_id: String,
          reference_id: T.nilable(String),
          sponsored: T::Boolean,
          user_operation_hash: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        caip2:,
        created_at:,
        status:,
        transaction_hash:,
        wallet_id:,
        reference_id: nil,
        sponsored: nil,
        user_operation_hash: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            caip2: String,
            created_at: Float,
            status: Privy::Transaction::Status::TaggedSymbol,
            transaction_hash: T.nilable(String),
            wallet_id: String,
            reference_id: T.nilable(String),
            sponsored: T::Boolean,
            user_operation_hash: String
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Transaction::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BROADCASTED =
          T.let(:broadcasted, Privy::Transaction::Status::TaggedSymbol)
        CONFIRMED = T.let(:confirmed, Privy::Transaction::Status::TaggedSymbol)
        EXECUTION_REVERTED =
          T.let(:execution_reverted, Privy::Transaction::Status::TaggedSymbol)
        FAILED = T.let(:failed, Privy::Transaction::Status::TaggedSymbol)
        REPLACED = T.let(:replaced, Privy::Transaction::Status::TaggedSymbol)
        FINALIZED = T.let(:finalized, Privy::Transaction::Status::TaggedSymbol)
        PROVIDER_ERROR =
          T.let(:provider_error, Privy::Transaction::Status::TaggedSymbol)
        PENDING = T.let(:pending, Privy::Transaction::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::Transaction::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
