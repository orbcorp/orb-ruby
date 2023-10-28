require 'orb/model'
module Orb
    module Models
        class CostListByExternalIDResponse < Orb::Model

                class Data < Orb::Model

                        class PerPriceCosts < Orb::Model

                                class PriceGroups < Orb::Model

                                        # @!attribute [rw] grouping_key
                                        required :grouping_key, String
                                        # @!attribute [rw] grouping_value
                                        required :grouping_value, String
                                        # @!attribute [rw] secondary_grouping_key
                                        required :secondary_grouping_key, String
                                        # @!attribute [rw] secondary_grouping_value
                                        required :secondary_grouping_value, String
                                        # @!attribute [rw] total
                                        required :total, String

                                end
                                # @!attribute [rw] price
                                required :price, Orb::Unknown
                                # @!attribute [rw] subtotal
                                required :subtotal, String
                                # @!attribute [rw] total
                                required :total, String
                                # @!attribute [rw] price_groups
                                optional :price_groups, Orb::ArrayOf.new(PriceGroups)
                                # @!attribute [rw] quantity
                                optional :quantity, Float

                        end
                        # @!attribute [rw] per_price_costs
                        required :per_price_costs, Orb::ArrayOf.new(PerPriceCosts)
                        # @!attribute [rw] subtotal
                        required :subtotal, String
                        # @!attribute [rw] timeframe_end
                        required :timeframe_end, String
                        # @!attribute [rw] timeframe_start
                        required :timeframe_start, String
                        # @!attribute [rw] total
                        required :total, String

                end
                # @!attribute [rw] data
                required :data, Orb::ArrayOf.new(Data)

        end
    end
end