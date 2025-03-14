# typed: strong

module Orb
  module Models
    class PlanUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # An optional user-defined ID for this plan resource, used throughout the system
      #   as an alias for this Plan. Use this field to identify a plan by an existing
      #   identifier in your system.
      sig { returns(T.nilable(String)) }
      def external_plan_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_plan_id=(_)
      end

      # User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      sig do
        params(
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(external_plan_id: nil, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              external_plan_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
