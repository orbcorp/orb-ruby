# typed: strong

module Orb
  module Models
    class PriceEvaluateResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::Models::PriceEvaluateResponse, Orb::Internal::AnyHash)
        end

      sig { returns(T::Array[Orb::Models::PriceEvaluateResponse::Data]) }
      attr_accessor :data

      sig do
        params(
          data: T::Array[Orb::Models::PriceEvaluateResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: T::Array[Orb::Models::PriceEvaluateResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::PriceEvaluateResponse::Data,
              Orb::Internal::AnyHash
            )
          end

        # The currency of the price
        sig { returns(String) }
        attr_accessor :currency

        # The computed price groups associated with input price.
        sig { returns(T::Array[Orb::EvaluatePriceGroup]) }
        attr_accessor :price_groups

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
            inline_price_index: T.nilable(Integer),
            price_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency of the price
          currency:,
          # The computed price groups associated with input price.
          price_groups:,
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
