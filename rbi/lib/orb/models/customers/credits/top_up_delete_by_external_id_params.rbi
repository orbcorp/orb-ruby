# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpDeleteByExternalIDParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          Shape = T.type_alias { T.all({external_customer_id: String}, Orb::RequestParameters::Shape) }

          sig { returns(String) }
          attr_accessor :external_customer_id

          sig { params(external_customer_id: String, request_options: Orb::RequestOpts).void }
          def initialize(external_customer_id:, request_options: {}); end

          sig { returns(Orb::Models::Customers::Credits::TopUpDeleteByExternalIDParams::Shape) }
          def to_h; end
        end
      end
    end
  end
end
