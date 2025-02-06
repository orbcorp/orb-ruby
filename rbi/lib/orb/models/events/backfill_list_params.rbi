# typed: strong

module Orb
  module Models
    module Events
      class BackfillListParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        Shape = T.type_alias do
          T.all({cursor: T.nilable(String), limit: Integer}, Orb::RequestParameters::Shape)
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { params(cursor: T.nilable(String), limit: Integer, request_options: Orb::RequestOpts).void }
        def initialize(cursor: nil, limit: nil, request_options: {}); end

        sig { returns(Orb::Models::Events::BackfillListParams::Shape) }
        def to_h; end
      end
    end
  end
end
