# Orb Ruby API library

The Orb Ruby library provides convenient access to the Orb REST API from any Ruby 2.7+
application. The library includes model classes for all request params and response fields.

## Documentation

The API documentation can be found [here](https://www.withorb.com/https://docs.withorb.com/reference/api-reference).

## Installation

```sh
gem install orb
```

## Usage

The full API of this library can be found in [api.md](https://www.github.com/orbcorp/orb-ruby/blob/main/api.md).

```ruby
require 'orb'

orb = Orb.new(api_key: "My API Key", # defaults to ENV["ORB_API_KEY"]
);

customer = orb.customers.create(email: "example-customer@withorb.com", name: "My Customer");

puts customer.id
```

## Handling errors

When the library is unable to connect to the API,
or if the API returns a non-success status code (i.e., 4xx or 5xx response),
a subclass of `Orb::HTTP::Error` will be thrown:

```rb
begin
  customer = orb.customers.create(email: "example-customer@withorb.com", name: "My Customer")
rescue Orb::HTTP::Error => err
  puts err.code # 400
end
```

Error codes are as followed:

| Status Code | Error Type                 |
| ----------- | -------------------------- |
| 400         | `BadRequestError`          |
| 401         | `AuthenticationError`      |
| 403         | `PermissionDeniedError`    |
| 404         | `NotFoundError`            |
| 409         | `ConflictError`            |
| 422         | `UnprocessableEntityError` |
| 429         | `RateLimitError`           |
| >=500       | `InternalServerError`      |
| (else)      | `APIStatusError`           |
| N/A         | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.
Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict,
429 Rate Limit, and >=500 Internal errors will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```rb
# Configure the default for all requests:
orb = Orb.new(max_retries: 0, # default is 2
);
```

## Advanced

### How to tell whether `nil` means `null` or missing

In an API response, a field may be explicitly `nil`, or missing entirely; in either case, its value is `nil` in this library. You can differentiate the two cases with `.model_fields_set`:

```ruby
if response.my_field.nil?
  if response.model_fields_set.include? :my_field
    puts 'Got json like {my_field: null}.'
  else
    puts 'Got json like {}, without a my_field key present at all.'
  end
end
```

### Configuring the HTTP client

To avoid dependency clashes, Orb Ruby uses `Net::HTTP` by default. You can use your own http client by implementing your own request handler. TODO: docs forthcoming.

## Versioning

This package generally follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions, though certain backwards-incompatible changes may be released as minor versions:

1. Changes that only affect type hints/type documentation, without breaking runtime behavior.
2. Changes to library internals which are technically public but not intended or documented for external use. _(Please open a GitHub issue to let us know if you are relying on such internals)_.
3. Changes that we do not expect to impact the vast majority of users in practice.

We take backwards compatibility seriously and work hard to ensure you can rely on a smooth upgrade experience.

We are keen for your feedback; please open an [issue](https://www.github.com/orbcorp/orb-ruby/issues) with questions, bugs, or suggestions.

## Requirements

Ruby 2.7 or higher.
