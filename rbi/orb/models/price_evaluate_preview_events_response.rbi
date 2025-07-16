# typed: strong

module Orb
  module Models
    class PriceEvaluatePreviewEventsResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::PriceEvaluatePreviewEventsResponse,
            Orb::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[Orb::Models::PriceEvaluatePreviewEventsResponse::Data])
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              Orb::Models::PriceEvaluatePreviewEventsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Orb::Models::PriceEvaluatePreviewEventsResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::PriceEvaluatePreviewEventsResponse::Data,
              Orb::Internal::AnyHash
            )
          end

        # The currency of the price
        sig { returns(String) }
        attr_accessor :currency

        # The computed price groups associated with input price.
        sig { returns(T::Array[Orb::EvaluatePriceGroup]) }
        attr_accessor :price_groups

        # The external ID of the price
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # The index of the inline price
        sig { returns(T.nilable(Integer)) }
        attr_accessor :inline_price_index

        # The ID of the price
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(
            currency: String,
            price_groups: T::Array[Orb::EvaluatePriceGroup::OrHash],
            external_price_id: T.nilable(String),
            inline_price_index: T.nilable(Integer),
            price_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency of the price
          currency:,
          # The computed price groups associated with input price.
          price_groups:,
          # The external ID of the price
          external_price_id: nil,
          # The index of the inline price
          inline_price_index: nil,
          # The ID of the price
          price_id: nil
        )
        end

        sig do
          override.returns(
            {
              currency: String,
              price_groups: T::Array[Orb::EvaluatePriceGroup],
              external_price_id: T.nilable(String),
              inline_price_index: T.nilable(Integer),
              price_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
