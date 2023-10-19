require 'model'

module Models
    class BackfillListResponse < Model

            # @!attribute [rw] id
            required :id, String
            # @!attribute [rw] close_time
            required :close_time, String
            # @!attribute [rw] created_at
            required :created_at, String
            # @!attribute [rw] customer_id
            required :customer_id, String
            # @!attribute [rw] reverted_at
            required :reverted_at, String
            # @!attribute [rw] status
            required :status, Enum.new([:"pending", :"reflected", :"pending_revert", :"reverted"])
            # @!attribute [rw] timeframe_end
            required :timeframe_end, String
            # @!attribute [rw] timeframe_start
            required :timeframe_start, String

    end
end