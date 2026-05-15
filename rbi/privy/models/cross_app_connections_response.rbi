# typed: strong

module Privy
  module Models
    class CrossAppConnectionsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CrossAppConnectionsResponse, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::CrossAppConnection]) }
      attr_accessor :connections

      # Indicates that this response contains only publicly accessible data, not a
      # privileged resource
      sig do
        returns(
          Privy::CrossAppConnectionsResponse::DataClassification::OrSymbol
        )
      end
      attr_accessor :data_classification

      # The response for getting the list of cross-app connections.
      sig do
        params(
          connections: T::Array[Privy::CrossAppConnection::OrHash],
          data_classification:
            Privy::CrossAppConnectionsResponse::DataClassification::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        connections:,
        # Indicates that this response contains only publicly accessible data, not a
        # privileged resource
        data_classification:
      )
      end

      sig do
        override.returns(
          {
            connections: T::Array[Privy::CrossAppConnection],
            data_classification:
              Privy::CrossAppConnectionsResponse::DataClassification::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Indicates that this response contains only publicly accessible data, not a
      # privileged resource
      module DataClassification
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::CrossAppConnectionsResponse::DataClassification
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(
            :public,
            Privy::CrossAppConnectionsResponse::DataClassification::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CrossAppConnectionsResponse::DataClassification::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
