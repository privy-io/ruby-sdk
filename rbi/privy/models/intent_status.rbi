# typed: strong

module Privy
  module Models
    # Current status of an intent.
    module IntentStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::IntentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Privy::IntentStatus::TaggedSymbol)
      PROCESSING = T.let(:processing, Privy::IntentStatus::TaggedSymbol)
      EXECUTED = T.let(:executed, Privy::IntentStatus::TaggedSymbol)
      FAILED = T.let(:failed, Privy::IntentStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, Privy::IntentStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, Privy::IntentStatus::TaggedSymbol)
      DISMISSED = T.let(:dismissed, Privy::IntentStatus::TaggedSymbol)

      sig { override.returns(T::Array[Privy::IntentStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
