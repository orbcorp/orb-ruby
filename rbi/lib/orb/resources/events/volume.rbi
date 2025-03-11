# typed: strong

module Orb
  module Resources
    class Events
      class Volume
        sig do
          params(
              timeframe_start: Time,
              cursor: T.nilable(String),
              limit: Integer,
              timeframe_end: Time,
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Orb::Models::Events::EventVolumes)
        end
        def list(timeframe_start:, cursor: nil, limit: nil, timeframe_end: nil, request_options: {})
        end

        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
