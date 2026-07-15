# typed: strong

module Orb
  module Models
    class CustomerCreatePortalSessionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::CustomerCreatePortalSessionParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :customer_id

      # Duration in minutes until the portal session expires. Defaults to 60.
      # Maximum 180.
      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_in_minutes

      sig { params(expires_in_minutes: Integer).void }
      attr_writer :expires_in_minutes

      # When true (default), creating this session soft-deletes any other active portal
      # sessions for the customer. Set to false to allow concurrent sessions — useful
      # when minting portal links for multiple authenticated end-users at once. The
      # customer's permanent portal link (if any) is never invalidated by this.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :invalidate_existing

      sig { params(invalidate_existing: T::Boolean).void }
      attr_writer :invalidate_existing

      sig do
        params(
          customer_id: String,
          expires_in_minutes: Integer,
          invalidate_existing: T::Boolean,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        customer_id:,
        # Duration in minutes until the portal session expires. Defaults to 60.
        # Maximum 180.
        expires_in_minutes: nil,
        # When true (default), creating this session soft-deletes any other active portal
        # sessions for the customer. Set to false to allow concurrent sessions — useful
        # when minting portal links for multiple authenticated end-users at once. The
        # customer's permanent portal link (if any) is never invalidated by this.
        invalidate_existing: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            expires_in_minutes: Integer,
            invalidate_existing: T::Boolean,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
