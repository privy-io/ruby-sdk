# typed: strong

module Privy
  module Models
    class UserSearchParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserSearchParams, Privy::Internal::AnyHash)
        end

      sig do
        returns(
          T.any(
            Privy::UserSearchParams::Body::SearchTerm,
            Privy::UserSearchParams::Body::UnionMember1
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              Privy::UserSearchParams::Body::SearchTerm::OrHash,
              Privy::UserSearchParams::Body::UnionMember1::OrHash
            ),
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body:
              T.any(
                Privy::UserSearchParams::Body::SearchTerm,
                Privy::UserSearchParams::Body::UnionMember1
              ),
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Body
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::UserSearchParams::Body::SearchTerm,
              Privy::UserSearchParams::Body::UnionMember1
            )
          end

        class SearchTerm < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::UserSearchParams::Body::SearchTerm,
                Privy::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :search_term

          sig { params(search_term: String).returns(T.attached_class) }
          def self.new(search_term:)
          end

          sig { override.returns({ search_term: String }) }
          def to_hash
          end
        end

        class UnionMember1 < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::UserSearchParams::Body::UnionMember1,
                Privy::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :emails

          sig { returns(T::Array[String]) }
          attr_accessor :phone_numbers

          sig { returns(T::Array[String]) }
          attr_accessor :wallet_addresses

          sig do
            params(
              emails: T::Array[String],
              phone_numbers: T::Array[String],
              wallet_addresses: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(emails:, phone_numbers:, wallet_addresses:)
          end

          sig do
            override.returns(
              {
                emails: T::Array[String],
                phone_numbers: T::Array[String],
                wallet_addresses: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(T::Array[Privy::UserSearchParams::Body::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
