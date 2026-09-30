# typed: strong

module Orb
  module Models
    module Events
      class BackfillListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Orb::Events::BackfillListParams, Orb::Internal::AnyHash)
          end

        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # The number of items to fetch. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The status of the backfill.
        sig do
          returns(T.nilable(Orb::Events::BackfillListParams::Status::OrSymbol))
        end
        attr_accessor :status

        sig do
          params(
            cursor: T.nilable(String),
            customer_id: T.nilable(String),
            limit: Integer,
            status:
              T.nilable(Orb::Events::BackfillListParams::Status::OrSymbol),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          customer_id: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # The status of the backfill.
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              cursor: T.nilable(String),
              customer_id: T.nilable(String),
              limit: Integer,
              status:
                T.nilable(Orb::Events::BackfillListParams::Status::OrSymbol),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The status of the backfill.
        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Events::BackfillListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Orb::Events::BackfillListParams::Status::TaggedSymbol
            )
          REFLECTED =
            T.let(
              :reflected,
              Orb::Events::BackfillListParams::Status::TaggedSymbol
            )
          PENDING_REVERT =
            T.let(
              :pending_revert,
              Orb::Events::BackfillListParams::Status::TaggedSymbol
            )
          REVERTED =
            T.let(
              :reverted,
              Orb::Events::BackfillListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Events::BackfillListParams::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
