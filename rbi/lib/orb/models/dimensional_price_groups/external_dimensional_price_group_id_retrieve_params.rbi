# typed: strong

module Orb
  module Models
    module DimensionalPriceGroups
      class ExternalDimensionalPriceGroupIDRetrieveParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        Shape = T.type_alias { T.all({}, Orb::RequestParameters::Shape) }

        sig { params(request_options: Orb::RequestOpts).void }
        def initialize(request_options: {}); end

        sig do
          returns(Orb::Models::DimensionalPriceGroups::ExternalDimensionalPriceGroupIDRetrieveParams::Shape)
        end
        def to_h; end
      end
    end
  end
end
