# typed: strong

module Orb
  module Models
    module Customers
      class CreditListByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Customers::CreditListByExternalIDParams,
              Orb::Internal::AnyHash
            )
          end

        # The ledger currency or custom pricing unit to use.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_date_gt

        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_date_gte

        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_date_lt

        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_date_lte

        # If set to True, all expired and depleted blocks, as well as active block will be
        # returned.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_all_blocks

        sig { params(include_all_blocks: T::Boolean).void }
        attr_writer :include_all_blocks

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            currency: T.nilable(String),
            cursor: T.nilable(String),
            effective_date_gt: T.nilable(Time),
            effective_date_gte: T.nilable(Time),
            effective_date_lt: T.nilable(Time),
            effective_date_lte: T.nilable(Time),
            include_all_blocks: T::Boolean,
            limit: Integer,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ledger currency or custom pricing unit to use.
          currency: nil,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          effective_date_gt: nil,
          effective_date_gte: nil,
          effective_date_lt: nil,
          effective_date_lte: nil,
          # If set to True, all expired and depleted blocks, as well as active block will be
          # returned.
          include_all_blocks: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              currency: T.nilable(String),
              cursor: T.nilable(String),
              effective_date_gt: T.nilable(Time),
              effective_date_gte: T.nilable(Time),
              effective_date_lt: T.nilable(Time),
              effective_date_lte: T.nilable(Time),
              include_all_blocks: T::Boolean,
              limit: Integer,
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
