# typed: strong

module Orb
  module Models
    module Events
      class BackfillFetchParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { params(request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])).void }
        def initialize(request_options: {})
        end

        sig { override.returns({request_options: Orb::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
