# typed: strong

module Orb
  module Models
    class EventSearchResponse < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::EventSearchResponse::Data]) }
      def data
      end

      sig do
        params(_: T::Array[Orb::Models::EventSearchResponse::Data])
          .returns(T::Array[Orb::Models::EventSearchResponse::Data])
      end
      def data=(_)
      end

      sig { params(data: T::Array[Orb::Models::EventSearchResponse::Data]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Orb::Models::EventSearchResponse::Data]}) }
      def to_hash
      end

      class Data < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def customer_id=(_)
        end

        sig { returns(T::Boolean) }
        def deprecated
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def deprecated=(_)
        end

        sig { returns(String) }
        def event_name
        end

        sig { params(_: String).returns(String) }
        def event_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_customer_id=(_)
        end

        sig { returns(T.anything) }
        def properties
        end

        sig { params(_: T.anything).returns(T.anything) }
        def properties=(_)
        end

        sig { returns(Time) }
        def timestamp
        end

        sig { params(_: Time).returns(Time) }
        def timestamp=(_)
        end

        sig do
          params(
            id: String,
            customer_id: T.nilable(String),
            deprecated: T::Boolean,
            event_name: String,
            external_customer_id: T.nilable(String),
            properties: T.anything,
            timestamp: Time
          )
            .void
        end
        def initialize(
          id:,
          customer_id:,
          deprecated:,
          event_name:,
          external_customer_id:,
          properties:,
          timestamp:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                customer_id: T.nilable(String),
                deprecated: T::Boolean,
                event_name: String,
                external_customer_id: T.nilable(String),
                properties: T.anything,
                timestamp: Time
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
