# frozen_string_literal: true

module Privy
  module Models
    class AbiSchemaItem < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AbiSchemaItem::Type]
      required :type, enum: -> { Privy::AbiSchemaItem::Type }

      # @!attribute anonymous
      #
      #   @return [Boolean, nil]
      optional :anonymous, Privy::Internal::Type::Boolean

      # @!attribute inputs
      #
      #   @return [Array<Privy::Models::AbiParameter>, nil]
      optional :inputs, -> { Privy::Internal::Type::ArrayOf[Privy::AbiParameter] }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute outputs
      #
      #   @return [Array<Privy::Models::AbiParameter>, nil]
      optional :outputs, -> { Privy::Internal::Type::ArrayOf[Privy::AbiParameter] }

      # @!attribute state_mutability
      #
      #   @return [Symbol, Privy::Models::AbiSchemaItem::StateMutability, nil]
      optional :state_mutability,
               enum: -> {
                 Privy::AbiSchemaItem::StateMutability
               },
               api_name: :stateMutability

      # @!method initialize(type:, anonymous: nil, inputs: nil, name: nil, outputs: nil, state_mutability: nil)
      #   @param type [Symbol, Privy::Models::AbiSchemaItem::Type]
      #   @param anonymous [Boolean]
      #   @param inputs [Array<Privy::Models::AbiParameter>]
      #   @param name [String]
      #   @param outputs [Array<Privy::Models::AbiParameter>]
      #   @param state_mutability [Symbol, Privy::Models::AbiSchemaItem::StateMutability]

      # @see Privy::Models::AbiSchemaItem#type
      module Type
        extend Privy::Internal::Type::Enum

        TYPE_FUNCTION = :function
        TYPE_CONSTRUCTOR = :constructor
        TYPE_EVENT = :event
        TYPE_FALLBACK = :fallback
        TYPE_RECEIVE = :receive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::AbiSchemaItem#state_mutability
      module StateMutability
        extend Privy::Internal::Type::Enum

        PURE = :pure
        VIEW = :view
        NONPAYABLE = :nonpayable
        PAYABLE = :payable

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    # @type [Privy::Internal::Type::Converter]
    AbiSchema = Privy::Internal::Type::ArrayOf[-> { Privy::AbiSchemaItem }]
  end
end
