# typed: strong

module Orb
  module Models
    module DimensionalPriceGroups
      class PriceCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::DimensionalPriceGroups::PriceCreateParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :dimensional_price_group_id

        # Billing cadence for every price
        sig do
          returns(
            Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::OrSymbol
          )
        end
        attr_accessor :cadence

        # An ISO 4217 currency string for every price.
        sig { returns(String) }
        attr_accessor :currency

        # The item for every price. Must be the group's billable metric item.
        sig { returns(String) }
        attr_accessor :item_id

        sig do
          returns(
            Orb::DimensionalPriceGroups::PriceCreateParams::ModelType::OrSymbol
          )
        end
        attr_accessor :model_type

        sig do
          returns(
            T::Array[Orb::DimensionalPriceGroups::PriceCreateParams::Price]
          )
        end
        attr_accessor :prices

        # Shared tier boundaries. Required for tiered prices and omitted for unit prices.
        sig do
          returns(
            T.nilable(
              T::Array[Orb::DimensionalPriceGroups::PriceCreateParams::Tier]
            )
          )
        end
        attr_accessor :tiers

        sig do
          params(
            dimensional_price_group_id: String,
            cadence:
              Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::OrSymbol,
            currency: String,
            item_id: String,
            model_type:
              Orb::DimensionalPriceGroups::PriceCreateParams::ModelType::OrSymbol,
            prices:
              T::Array[
                Orb::DimensionalPriceGroups::PriceCreateParams::Price::OrHash
              ],
            tiers:
              T.nilable(
                T::Array[
                  Orb::DimensionalPriceGroups::PriceCreateParams::Tier::OrHash
                ]
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dimensional_price_group_id:,
          # Billing cadence for every price
          cadence:,
          # An ISO 4217 currency string for every price.
          currency:,
          # The item for every price. Must be the group's billable metric item.
          item_id:,
          model_type:,
          prices:,
          # Shared tier boundaries. Required for tiered prices and omitted for unit prices.
          tiers: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dimensional_price_group_id: String,
              cadence:
                Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::OrSymbol,
              currency: String,
              item_id: String,
              model_type:
                Orb::DimensionalPriceGroups::PriceCreateParams::ModelType::OrSymbol,
              prices:
                T::Array[Orb::DimensionalPriceGroups::PriceCreateParams::Price],
              tiers:
                T.nilable(
                  T::Array[Orb::DimensionalPriceGroups::PriceCreateParams::Tier]
                ),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Billing cadence for every price
        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::DimensionalPriceGroups::PriceCreateParams::Cadence
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::DimensionalPriceGroups::PriceCreateParams::Cadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ModelType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::DimensionalPriceGroups::PriceCreateParams::ModelType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNIT =
            T.let(
              :unit,
              Orb::DimensionalPriceGroups::PriceCreateParams::ModelType::TaggedSymbol
            )
          TIERED =
            T.let(
              :tiered,
              Orb::DimensionalPriceGroups::PriceCreateParams::ModelType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::DimensionalPriceGroups::PriceCreateParams::ModelType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Price < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::DimensionalPriceGroups::PriceCreateParams::Price,
                Orb::Internal::AnyHash
              )
            end

          # One amount for a unit price. One amount per tier for a tiered price, in tier
          # order.
          sig { returns(T::Array[Float]) }
          attr_accessor :amounts

          # Dimension values, in the group's dimension order.
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          # Price name. Defaults to the dimension values.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig do
            params(
              amounts: T::Array[Float],
              dimension_values: T::Array[String],
              name: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # One amount for a unit price. One amount per tier for a tiered price, in tier
            # order.
            amounts:,
            # Dimension values, in the group's dimension order.
            dimension_values:,
            # Price name. Defaults to the dimension values.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                amounts: T::Array[Float],
                dimension_values: T::Array[String],
                name: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::DimensionalPriceGroups::PriceCreateParams::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Exclusive tier starting value
          sig { returns(Float) }
          attr_accessor :first_unit

          # Inclusive tier ending value. Null on the last tier.
          sig { returns(T.nilable(Float)) }
          attr_accessor :last_unit

          sig do
            params(first_unit: Float, last_unit: T.nilable(Float)).returns(
              T.attached_class
            )
          end
          def self.new(
            # Exclusive tier starting value
            first_unit:,
            # Inclusive tier ending value. Null on the last tier.
            last_unit: nil
          )
          end

          sig do
            override.returns({ first_unit: Float, last_unit: T.nilable(Float) })
          end
          def to_hash
          end
        end
      end
    end
  end
end
