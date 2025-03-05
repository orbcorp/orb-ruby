# typed: strong

module Orb
  module Models
    class NewTaxConfigurationModel < Orb::Union
      abstract!

      class NewAvalaraTaxConfiguration < Orb::BaseModel
        sig { returns(T::Boolean) }
        def tax_exempt
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def tax_exempt=(_)
        end

        sig { returns(Symbol) }
        def tax_provider
        end

        sig { params(_: Symbol).returns(Symbol) }
        def tax_provider=(_)
        end

        sig { returns(T.nilable(String)) }
        def tax_exemption_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tax_exemption_code=(_)
        end

        sig do
          params(tax_exempt: T::Boolean, tax_exemption_code: T.nilable(String), tax_provider: Symbol).void
        end
        def initialize(tax_exempt:, tax_exemption_code: nil, tax_provider: :avalara)
        end

        sig do
          override.returns(
            {
              tax_exempt: T::Boolean,
              tax_provider: Symbol,
              tax_exemption_code: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class NewTaxJarConfiguration < Orb::BaseModel
        sig { returns(T::Boolean) }
        def tax_exempt
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def tax_exempt=(_)
        end

        sig { returns(Symbol) }
        def tax_provider
        end

        sig { params(_: Symbol).returns(Symbol) }
        def tax_provider=(_)
        end

        sig { params(tax_exempt: T::Boolean, tax_provider: Symbol).void }
        def initialize(tax_exempt:, tax_provider: :taxjar)
        end

        sig { override.returns({tax_exempt: T::Boolean, tax_provider: Symbol}) }
        def to_hash
        end
      end

      sig do
        override
          .returns(
            [[Symbol, Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration], [Symbol, Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
