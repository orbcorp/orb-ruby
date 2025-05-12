# typed: strong

module Orb
  module Errors
    class Error < StandardError
      sig { returns(T.nilable(StandardError)) }
      attr_accessor :cause
    end

    class ConversionError < Orb::Errors::Error
    end

    class APIError < Orb::Errors::Error
      sig { returns(URI::Generic) }
      attr_accessor :url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :status

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: T.nilable(Integer),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: nil
      )
      end
    end

    class APIConnectionError < Orb::Errors::APIError
      sig { void }
      attr_accessor :status

      sig { void }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
      end
    end

    class APITimeoutError < Orb::Errors::APIConnectionError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
      end
    end

    class APIStatusError < Orb::Errors::APIError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.self_type)
      end
      def self.for(url:, status:, body:, request:, response:, message: nil)
      end

      sig { returns(Integer) }
      attr_accessor :status

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(url:, status:, body:, request:, response:, message: nil)
      end
    end

    class BadRequestError < Orb::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < Orb::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < Orb::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < Orb::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < Orb::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < Orb::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < Orb::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < Orb::Errors::APIStatusError
      HTTP_STATUS = T.let((500..), T::Range[Integer])
    end

    class ConstraintViolation < Orb::Errors::BadRequestError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#400-constraint-violation"
    end

    class DuplicateResourceCreation < Orb::Errors::BadRequestError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#400-duplicate-resource-creation"
    end

    class FeatureNotAvailable < Orb::Errors::BadRequestError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#404-feature-not-available"
    end

    class RequestValidationError < Orb::Errors::BadRequestError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#400-request-validation-errors"
    end

    class OrbAuthenticationError < Orb::Errors::AuthenticationError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#401-authentication-error"
    end

    class ResourceNotFound < Orb::Errors::NotFoundError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#404-resource-not-found"
    end

    class URLNotFound < Orb::Errors::NotFoundError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#404-url-not-found"
    end

    class ResourceConflict < Orb::Errors::ConflictError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#409-resource-conflict"
    end

    class RequestTooLarge < Orb::Errors::APIStatusError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#413-request-too-large"
    end

    class ResourceTooLarge < Orb::Errors::APIStatusError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#413-resource-too-large"
    end

    class TooManyRequests < Orb::Errors::RateLimitError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#429-too-many-requests"
    end

    class OrbInternalServerError < Orb::Errors::InternalServerError
      TYPE =
        "https://docs.withorb.com/reference/error-responses#500-internal-server-error"
    end
  end
end
