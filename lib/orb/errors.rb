# frozen_string_literal: true

module Orb
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < Orb::Error
  end

  class APIError < Orb::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < Orb::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
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

  class APITimeoutError < Orb::APIConnectionError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
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

  class APIStatusError < Orb::APIError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    #
    # @return [Orb::APIStatusError]
    #
    def self.for(url:, status:, body:, request:, response:)
      key = Orb::Util.dig(body, :type)
      kwargs = {url: url, status: status, body: body, request: request, response: response}

      case [status, key]
      in [400, Orb::ConstraintViolation::TYPE]
        Orb::ConstraintViolation.new(**kwargs)
      in [400, Orb::DuplicateResourceCreation::TYPE]
        Orb::DuplicateResourceCreation.new(**kwargs)
      in [400, Orb::FeatureNotAvailable::TYPE]
        Orb::FeatureNotAvailable.new(**kwargs)
      in [400, Orb::RequestValidationError::TYPE]
        Orb::RequestValidationError.new(**kwargs)
      in [401, Orb::OrbAuthenticationError::TYPE]
        Orb::OrbAuthenticationError.new(**kwargs)
      in [404, Orb::ResourceNotFound::TYPE]
        Orb::ResourceNotFound.new(**kwargs)
      in [404, Orb::URLNotFound::TYPE]
        Orb::URLNotFound.new(**kwargs)
      in [409, Orb::ResourceConflict::TYPE]
        Orb::ResourceConflict.new(**kwargs)
      in [413, Orb::RequestTooLarge::TYPE]
        Orb::RequestTooLarge.new(**kwargs)
      in [413, Orb::ResourceTooLarge::TYPE]
        Orb::ResourceTooLarge.new(**kwargs)
      in [429, Orb::TooManyRequests::TYPE]
        Orb::TooManyRequests.new(**kwargs)
      in [(500..), Orb::OrbInternalServerError::TYPE]
        Orb::OrbInternalServerError.new(**kwargs)
      in [400, _]
        Orb::BadRequestError.new(**kwargs)
      in [401, _]
        Orb::AuthenticationError.new(**kwargs)
      in [403, _]
        Orb::PermissionDeniedError.new(**kwargs)
      in [404, _]
        Orb::NotFoundError.new(**kwargs)
      in [409, _]
        Orb::ConflictError.new(**kwargs)
      in [422, _]
        Orb::UnprocessableEntityError.new(**kwargs)
      in [429, _]
        Orb::RateLimitError.new(**kwargs)
      in [(500..), _]
        Orb::InternalServerError.new(**kwargs)
      else
        Orb::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
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
    HTTP_STATUS = (500..)
  end

  class ConstraintViolation < Orb::BadRequestError
    HTTP_STATUS = Orb::BadRequestError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#400-constraint-violation"
  end

  class DuplicateResourceCreation < Orb::BadRequestError
    HTTP_STATUS = Orb::BadRequestError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#400-duplicate-resource-creation"
  end

  class FeatureNotAvailable < Orb::BadRequestError
    HTTP_STATUS = Orb::BadRequestError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#404-feature-not-available"
  end

  class RequestValidationError < Orb::BadRequestError
    HTTP_STATUS = Orb::BadRequestError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#400-request-validation-errors"
  end

  class OrbAuthenticationError < Orb::AuthenticationError
    HTTP_STATUS = Orb::AuthenticationError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#401-authentication-error"
  end

  class ResourceNotFound < Orb::NotFoundError
    HTTP_STATUS = Orb::NotFoundError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#404-resource-not-found"
  end

  class URLNotFound < Orb::NotFoundError
    HTTP_STATUS = Orb::NotFoundError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#404-url-not-found"
  end

  class ResourceConflict < Orb::ConflictError
    HTTP_STATUS = Orb::ConflictError::HTTP_STATUS

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
    HTTP_STATUS = Orb::RateLimitError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#429-too-many-requests"
  end

  class OrbInternalServerError < Orb::InternalServerError
    HTTP_STATUS = Orb::InternalServerError::HTTP_STATUS

    TYPE = "https://docs.withorb.com/reference/error-responses#500-internal-server-error"
  end
end
