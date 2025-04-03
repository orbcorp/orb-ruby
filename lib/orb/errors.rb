# frozen_string_literal: true

module Orb
  module Errors
    class Error < StandardError
      # @!parse
      #   # @return [StandardError, nil]
      #   attr_accessor :cause
    end

    class ConversionError < Orb::Errors::Error
    end

    class APIError < Orb::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < Orb::Errors::APIError
      # @!parse
      #   # @return [nil]
      #   attr_accessor :status

      # @!parse
      #   # @return [nil]
      #   attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < Orb::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < Orb::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [Orb::Errors::APIStatusError]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        key = Orb::Internal::Util.dig(body, :type)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case [status, key]
        in [400, Orb::Errors::ConstraintViolation::TYPE]
          Orb::Errors::ConstraintViolation.new(**kwargs)
        in [400, Orb::Errors::DuplicateResourceCreation::TYPE]
          Orb::Errors::DuplicateResourceCreation.new(**kwargs)
        in [400, Orb::Errors::FeatureNotAvailable::TYPE]
          Orb::Errors::FeatureNotAvailable.new(**kwargs)
        in [400, Orb::Errors::RequestValidationError::TYPE]
          Orb::Errors::RequestValidationError.new(**kwargs)
        in [401, Orb::Errors::OrbAuthenticationError::TYPE]
          Orb::Errors::OrbAuthenticationError.new(**kwargs)
        in [404, Orb::Errors::ResourceNotFound::TYPE]
          Orb::Errors::ResourceNotFound.new(**kwargs)
        in [404, Orb::Errors::URLNotFound::TYPE]
          Orb::Errors::URLNotFound.new(**kwargs)
        in [409, Orb::Errors::ResourceConflict::TYPE]
          Orb::Errors::ResourceConflict.new(**kwargs)
        in [413, Orb::Errors::RequestTooLarge::TYPE]
          Orb::Errors::RequestTooLarge.new(**kwargs)
        in [413, Orb::Errors::ResourceTooLarge::TYPE]
          Orb::Errors::ResourceTooLarge.new(**kwargs)
        in [429, Orb::Errors::TooManyRequests::TYPE]
          Orb::Errors::TooManyRequests.new(**kwargs)
        in [(500..), Orb::Errors::OrbInternalServerError::TYPE]
          Orb::Errors::OrbInternalServerError.new(**kwargs)
        in [400, _]
          Orb::Errors::BadRequestError.new(**kwargs)
        in [401, _]
          Orb::Errors::AuthenticationError.new(**kwargs)
        in [403, _]
          Orb::Errors::PermissionDeniedError.new(**kwargs)
        in [404, _]
          Orb::Errors::NotFoundError.new(**kwargs)
        in [409, _]
          Orb::Errors::ConflictError.new(**kwargs)
        in [422, _]
          Orb::Errors::UnprocessableEntityError.new(**kwargs)
        in [429, _]
          Orb::Errors::RateLimitError.new(**kwargs)
        in [(500..), _]
          Orb::Errors::InternalServerError.new(**kwargs)
        else
          Orb::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )
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
      HTTP_STATUS = (500..)
    end

    class ConstraintViolation < Orb::Errors::BadRequestError
      TYPE = "https://docs.withorb.com/reference/error-responses#400-constraint-violation"
    end

    class DuplicateResourceCreation < Orb::Errors::BadRequestError
      TYPE = "https://docs.withorb.com/reference/error-responses#400-duplicate-resource-creation"
    end

    class FeatureNotAvailable < Orb::Errors::BadRequestError
      TYPE = "https://docs.withorb.com/reference/error-responses#404-feature-not-available"
    end

    class RequestValidationError < Orb::Errors::BadRequestError
      TYPE = "https://docs.withorb.com/reference/error-responses#400-request-validation-errors"
    end

    class OrbAuthenticationError < Orb::Errors::AuthenticationError
      TYPE = "https://docs.withorb.com/reference/error-responses#401-authentication-error"
    end

    class ResourceNotFound < Orb::Errors::NotFoundError
      TYPE = "https://docs.withorb.com/reference/error-responses#404-resource-not-found"
    end

    class URLNotFound < Orb::Errors::NotFoundError
      TYPE = "https://docs.withorb.com/reference/error-responses#404-url-not-found"
    end

    class ResourceConflict < Orb::Errors::ConflictError
      TYPE = "https://docs.withorb.com/reference/error-responses#409-resource-conflict"
    end

    class RequestTooLarge < Orb::Errors::APIStatusError
      TYPE = "https://docs.withorb.com/reference/error-responses#413-request-too-large"
    end

    class ResourceTooLarge < Orb::Errors::APIStatusError
      TYPE = "https://docs.withorb.com/reference/error-responses#413-resource-too-large"
    end

    class TooManyRequests < Orb::Errors::RateLimitError
      TYPE = "https://docs.withorb.com/reference/error-responses#429-too-many-requests"
    end

    class OrbInternalServerError < Orb::Errors::InternalServerError
      TYPE = "https://docs.withorb.com/reference/error-responses#500-internal-server-error"
    end
  end

  Error = Orb::Errors::Error

  ConversionError = Orb::Errors::ConversionError

  APIError = Orb::Errors::APIError

  APIStatusError = Orb::Errors::APIStatusError

  APIConnectionError = Orb::Errors::APIConnectionError

  APITimeoutError = Orb::Errors::APITimeoutError

  BadRequestError = Orb::Errors::BadRequestError

  AuthenticationError = Orb::Errors::AuthenticationError

  PermissionDeniedError = Orb::Errors::PermissionDeniedError

  NotFoundError = Orb::Errors::NotFoundError

  ConflictError = Orb::Errors::ConflictError

  UnprocessableEntityError = Orb::Errors::UnprocessableEntityError

  RateLimitError = Orb::Errors::RateLimitError

  InternalServerError = Orb::Errors::InternalServerError

  ConstraintViolation = Orb::Errors::ConstraintViolation

  DuplicateResourceCreation = Orb::Errors::DuplicateResourceCreation

  FeatureNotAvailable = Orb::Errors::FeatureNotAvailable

  RequestValidationError = Orb::Errors::RequestValidationError

  OrbAuthenticationError = Orb::Errors::OrbAuthenticationError

  ResourceNotFound = Orb::Errors::ResourceNotFound

  URLNotFound = Orb::Errors::URLNotFound

  ResourceConflict = Orb::Errors::ResourceConflict

  RequestTooLarge = Orb::Errors::RequestTooLarge

  ResourceTooLarge = Orb::Errors::ResourceTooLarge

  TooManyRequests = Orb::Errors::TooManyRequests

  OrbInternalServerError = Orb::Errors::OrbInternalServerError
end
