# typed: strong

module Orb
  module Models
    module Plans
      class DraftPublishParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Orb::Plans::DraftPublishParams, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :plan_id

        # Also make the new version the plan's default.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :set_as_default

        sig { params(set_as_default: T::Boolean).void }
        attr_writer :set_as_default

        sig do
          params(
            plan_id: String,
            set_as_default: T::Boolean,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          plan_id:,
          # Also make the new version the plan's default.
          set_as_default: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              plan_id: String,
              set_as_default: T::Boolean,
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
