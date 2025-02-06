# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpDeleteParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          Shape = T.type_alias { T.all({customer_id: String}, Orb::RequestParameters::Shape) }

          sig { returns(String) }
          attr_accessor :customer_id

          sig { params(customer_id: String, request_options: Orb::RequestOpts).void }
          def initialize(customer_id:, request_options: {}); end

          sig { returns(Orb::Models::Customers::Credits::TopUpDeleteParams::Shape) }
          def to_h; end
        end
      end
    end
  end
end
