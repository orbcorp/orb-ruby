# typed: strong

module Orb
  module Models
    class NewAccountingSyncConfigurationModel < Orb::BaseModel
      sig { returns(T.nilable(T::Array[Orb::Models::NewAccountingSyncConfigurationModel::AccountingProvider])) }
      def accounting_providers
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::NewAccountingSyncConfigurationModel::AccountingProvider]))
          .returns(T.nilable(T::Array[Orb::Models::NewAccountingSyncConfigurationModel::AccountingProvider]))
      end
      def accounting_providers=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def excluded
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def excluded=(_)
      end

      sig do
        params(
          accounting_providers: T.nilable(T::Array[Orb::Models::NewAccountingSyncConfigurationModel::AccountingProvider]),
          excluded: T.nilable(T::Boolean)
        )
          .void
      end
      def initialize(accounting_providers: nil, excluded: nil)
      end

      sig do
        override
          .returns(
            {
              accounting_providers: T.nilable(T::Array[Orb::Models::NewAccountingSyncConfigurationModel::AccountingProvider]),
              excluded: T.nilable(T::Boolean)
            }
          )
      end
      def to_hash
      end

      class AccountingProvider < Orb::BaseModel
        sig { returns(String) }
        def external_provider_id
        end

        sig { params(_: String).returns(String) }
        def external_provider_id=(_)
        end

        sig { returns(String) }
        def provider_type
        end

        sig { params(_: String).returns(String) }
        def provider_type=(_)
        end

        sig { params(external_provider_id: String, provider_type: String).void }
        def initialize(external_provider_id:, provider_type:)
        end

        sig { override.returns({external_provider_id: String, provider_type: String}) }
        def to_hash
        end
      end
    end
  end
end
