# typed: strong

module Privy
  module Models
    module Apps
      class DenylistListParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Privy::Apps::DenylistListParams, Privy::Internal::AnyHash)
          end

        # The ID of the app.
        sig { returns(String) }
        attr_accessor :app_id

        # Cursor returned by the previous page.
        sig { returns(T.nilable(String)) }
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        sig { returns(T.nilable(Float)) }
        attr_accessor :limit

        sig do
          params(
            app_id: String,
            cursor: String,
            limit: T.nilable(Float),
            request_options: Privy::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the app.
          app_id:,
          # Cursor returned by the previous page.
          cursor: nil,
          limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              app_id: String,
              cursor: String,
              limit: T.nilable(Float),
              request_options: Privy::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
