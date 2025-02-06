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
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Events::EventVolumes)
        end
        def list(timeframe_start:, cursor:, limit:, timeframe_end:, request_options: {}); end

        sig { params(client: Orb::Client).void }
        def initialize(client:); end
      end
    end
  end
end
