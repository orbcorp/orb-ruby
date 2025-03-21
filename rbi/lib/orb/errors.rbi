# typed: strong

module Orb
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    attr_accessor :cause
  end

  class ConversionError < Orb::Error
  end

  class APIError < Orb::Error
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
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
    end
  end

  class APIConnectionError < Orb::APIError
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
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < Orb::APIConnectionError
    # @api private
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < Orb::APIError
    # @api private
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
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
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status:, body:, request:, response:, message: nil)
    end
  end

  class BadRequestError < Orb::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Orb::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Orb::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Orb::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Orb::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Orb::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Orb::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Orb::APIStatusError
    HTTP_STATUS = T.let((500..), T::Range[Integer])
  end

  class ConstraintViolation < Orb::BadRequestError
    HTTP_STATUS = 400

    TYPE = "https://docs.withorb.com/reference/error-responses#400-constraint-violation"
  end

  class DuplicateResourceCreation < Orb::BadRequestError
    HTTP_STATUS = 400

    TYPE = "https://docs.withorb.com/reference/error-responses#400-duplicate-resource-creation"
  end

  class FeatureNotAvailable < Orb::BadRequestError
    HTTP_STATUS = 400

    TYPE = "https://docs.withorb.com/reference/error-responses#404-feature-not-available"
  end

  class RequestValidationError < Orb::BadRequestError
    HTTP_STATUS = 400

    TYPE = "https://docs.withorb.com/reference/error-responses#400-request-validation-errors"
  end

  class OrbAuthenticationError < Orb::AuthenticationError
    HTTP_STATUS = 401

    TYPE = "https://docs.withorb.com/reference/error-responses#401-authentication-error"
  end

  class ResourceNotFound < Orb::NotFoundError
    HTTP_STATUS = 404

    TYPE = "https://docs.withorb.com/reference/error-responses#404-resource-not-found"
  end

  class URLNotFound < Orb::NotFoundError
    HTTP_STATUS = 404

    TYPE = "https://docs.withorb.com/reference/error-responses#404-url-not-found"
  end

  class ResourceConflict < Orb::ConflictError
    HTTP_STATUS = 409

    TYPE = "https://docs.withorb.com/reference/error-responses#409-resource-conflict"
  end

  class RequestTooLarge < Orb::APIStatusError
    HTTP_STATUS = 413

    TYPE = "https://docs.withorb.com/reference/error-responses#413-request-too-large"
  end

  class ResourceTooLarge < Orb::APIStatusError
    HTTP_STATUS = 413

    TYPE = "https://docs.withorb.com/reference/error-responses#413-resource-too-large"
  end

  class TooManyRequests < Orb::RateLimitError
    HTTP_STATUS = 429

    TYPE = "https://docs.withorb.com/reference/error-responses#429-too-many-requests"
  end

  class OrbInternalServerError < Orb::InternalServerError
    HTTP_STATUS = T.let((500..), T::Range[Integer])

    TYPE = "https://docs.withorb.com/reference/error-responses#500-internal-server-error"
  end
end
