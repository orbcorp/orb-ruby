# typed: strong

module Orb
  module Util
    sig { returns(Float) }
    def self.monotonic_secs
    end

    class << self
      sig { returns(String) }
      def arch
      end

      sig { returns(String) }
      def os
      end
    end

    class << self
      sig { params(input: T.anything).returns(T.any(T::Boolean, T.anything)) }
      def primitive?(input)
      end

      sig { params(input: T.anything).returns(T.any(T::Boolean, T.anything)) }
      def coerce_boolean(input)
      end

      sig { params(input: T.anything).returns(T.nilable(T::Boolean)) }
      def coerce_boolean!(input)
      end

      sig { params(input: T.anything).returns(T.any(Integer, T.anything)) }
      def coerce_integer(input)
      end

      sig { params(input: T.anything).returns(T.any(Float, T.anything)) }
      def coerce_float(input)
      end

      sig { params(input: T.anything).returns(T.any(T::Hash[T.anything, T.anything], T.anything)) }
      def coerce_hash(input)
      end
    end

    OMIT = T.let(T.anything, T.anything)

    class << self
      sig { params(lhs: T.anything, rhs: T.anything, concat: T::Boolean).returns(T.anything) }
      private def deep_merge_lr(lhs, rhs, concat: false)
      end

      sig do
        params(values: T::Array[T.anything], sentinel: T.nilable(T.anything), concat: T::Boolean)
          .returns(T.anything)
      end
      def deep_merge(*values, sentinel: nil, concat: false)
      end

      sig do
        params(
          data: T.any(T::Hash[Symbol, T.anything], T::Array[T.anything], T.anything),
          pick: T.nilable(T.any(Symbol, Integer, T::Array[T.any(Symbol, Integer)])),
          sentinel: T.nilable(T.anything),
          blk: T.nilable(T.proc.returns(T.anything))
        )
          .returns(T.nilable(T.anything))
      end
      def dig(data, pick, sentinel = nil, &blk)
      end
    end

    class << self
      sig { params(uri: URI::Generic).returns(String) }
      def uri_origin(uri)
      end

      sig { params(path: T.any(String, T::Array[String])).returns(String) }
      def interpolate_path(path)
      end
    end

    class << self
      sig { params(query: T.nilable(String)).returns(T::Hash[String, T::Array[String]]) }
      def decode_query(query)
      end

      sig do
        params(query: T.nilable(T::Hash[String, T.nilable(T.any(T::Array[String], String))]))
          .returns(T.nilable(String))
      end
      def encode_query(query)
      end
    end

    ParsedUriShape = T.type_alias do
      {
        scheme: T.nilable(String),
        host: T.nilable(String),
        port: T.nilable(Integer),
        path: T.nilable(String),
        query: T::Hash[String, T::Array[String]]
      }
    end

    class << self
      sig { params(url: T.any(URI::Generic, String)).returns(Orb::Util::ParsedUriShape) }
      def parse_uri(url)
      end

      sig { params(parsed: Orb::Util::ParsedUriShape).returns(URI::Generic) }
      def unparse_uri(parsed)
      end

      sig { params(lhs: Orb::Util::ParsedUriShape, rhs: Orb::Util::ParsedUriShape).returns(URI::Generic) }
      def join_parsed_uri(lhs, rhs)
      end
    end

    class << self
      sig do
        params(
          headers: T::Hash[String,
                           T.nilable(T.any(String, Integer, T::Array[T.nilable(T.any(String, Integer))]))]
        )
          .returns(T::Hash[String, String])
      end
      def normalized_headers(*headers)
      end
    end

    class << self
      sig { params(io: StringIO, boundary: String, key: T.any(Symbol, String), val: T.anything).void }
      private def encode_multipart_formdata(io, boundary:, key:, val:)
      end

      sig { params(headers: T::Hash[String, String], body: T.anything).returns(T.anything) }
      def encode_content(headers, body)
      end

      sig do
        params(
          headers: T.any(T::Hash[String, String], Net::HTTPHeader),
          stream: T::Enumerable[String],
          suppress_error: T::Boolean
        )
          .returns(T.anything)
      end
      def decode_content(headers, stream:, suppress_error: false)
      end
    end

    class << self
      sig { params(enum: T::Enumerable[T.anything], close: T.proc.void).returns(T::Enumerable[T.anything]) }
      def fused_enum(enum, &close)
      end

      sig { params(enum: T.nilable(T::Enumerable[T.anything])).void }
      def close_fused!(enum)
      end

      sig do
        params(
          enum: T.nilable(T::Enumerable[T.anything]),
          blk: T.proc.params(arg0: Enumerator::Yielder).void
        ).void
      end
      def chain_fused(enum, &blk)
      end
    end

    SSEMessage = T.type_alias do
      {event: T.nilable(String), data: T.nilable(String), id: T.nilable(String), retry: T.nilable(Integer)}
    end

    class << self
      sig { params(enum: T::Enumerable[String]).returns(T::Enumerable[String]) }
      def decode_lines(enum)
      end

      sig { params(lines: T::Enumerable[String]).returns(Orb::Util::SSEMessage) }
      def decode_sse(lines)
      end
    end
  end
end
