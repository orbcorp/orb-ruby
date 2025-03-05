# typed: strong

module Orb
  module Models
    class NewReportingConfigurationModel < Orb::BaseModel
      sig { returns(T::Boolean) }
      def exempt
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def exempt=(_)
      end

      sig { params(exempt: T::Boolean).void }
      def initialize(exempt:)
      end

      sig { override.returns({exempt: T::Boolean}) }
      def to_hash
      end
    end
  end
end
