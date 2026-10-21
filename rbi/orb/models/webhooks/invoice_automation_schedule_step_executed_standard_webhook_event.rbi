# typed: strong

module Orb
  module Models
    module Webhooks
      class InvoiceAutomationScheduleStepExecutedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        # The invoice fields a consumer needs to run their own notification flows without
        # a follow-up API call, mirroring the variables Orb's own automation emails render
        # against.
        sig do
          returns(
            Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Invoice
          )
        end
        attr_reader :invoice

        sig do
          params(
            invoice:
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Invoice::OrHash
          ).void
        end
        attr_writer :invoice

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a collections-automation schedule step is executed for an invoice.
        sig do
          params(
            id: String,
            created_at: Time,
            invoice:
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Invoice::OrHash,
            payload_style:
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          # The time at which this event was created, to the second.
          created_at:,
          # The invoice fields a consumer needs to run their own notification flows without
          # a follow-up API call, mirroring the variables Orb's own automation emails render
          # against.
          invoice:,
          # The serialization style this payload was rendered in, as configured on the
          # endpoint.
          payload_style:,
          properties:,
          # The event this payload describes.
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              invoice:
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Invoice,
              payload_style:
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Invoice < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Invoice,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :amount_due

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(String) }
          attr_accessor :customer_name

          sig { returns(T.nilable(Date)) }
          attr_accessor :due_date

          sig { returns(T.nilable(String)) }
          attr_accessor :external_customer_id

          sig { returns(T.nilable(String)) }
          attr_accessor :hosted_invoice_url

          sig { returns(Time) }
          attr_accessor :invoice_date

          sig { returns(String) }
          attr_accessor :invoice_number

          sig { returns(T.nilable(Time)) }
          attr_accessor :issued_at

          sig { returns(T.nilable(String)) }
          attr_accessor :memo

          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_last_four_digits

          sig { returns(String) }
          attr_accessor :status

          sig { returns(T.nilable(String)) }
          attr_accessor :subscription_id

          # The invoice fields a consumer needs to run their own notification flows without
          # a follow-up API call, mirroring the variables Orb's own automation emails render
          # against.
          sig do
            params(
              id: String,
              amount_due: String,
              currency: String,
              customer_id: String,
              customer_name: String,
              due_date: T.nilable(Date),
              external_customer_id: T.nilable(String),
              hosted_invoice_url: T.nilable(String),
              invoice_date: Time,
              invoice_number: String,
              issued_at: T.nilable(Time),
              memo: T.nilable(String),
              payment_method_last_four_digits: T.nilable(String),
              status: String,
              subscription_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            amount_due:,
            currency:,
            customer_id:,
            customer_name:,
            due_date:,
            external_customer_id:,
            hosted_invoice_url:,
            invoice_date:,
            invoice_number:,
            issued_at:,
            memo:,
            payment_method_last_four_digits:,
            status:,
            subscription_id:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount_due: String,
                currency: String,
                customer_id: String,
                customer_name: String,
                due_date: T.nilable(Date),
                external_customer_id: T.nilable(String),
                hosted_invoice_url: T.nilable(String),
                invoice_date: Time,
                invoice_number: String,
                issued_at: T.nilable(Time),
                memo: T.nilable(String),
                payment_method_last_four_digits: T.nilable(String),
                status: String,
                subscription_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::PayloadStyle::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Properties < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::Variants
              ]
            )
          end
          attr_accessor :actions

          sig { returns(T.nilable(String)) }
          attr_accessor :automation_schedule_template_id

          sig { returns(T.nilable(String)) }
          attr_accessor :automation_schedule_template_name

          sig { returns(Time) }
          attr_accessor :executed_at

          sig { returns(String) }
          attr_accessor :label

          sig { returns(Time) }
          attr_accessor :scheduled_at

          sig { returns(String) }
          attr_accessor :step_id

          sig do
            params(
              actions:
                T::Array[
                  T.any(
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail::OrHash,
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::OrHash
                  )
                ],
              automation_schedule_template_id: T.nilable(String),
              automation_schedule_template_name: T.nilable(String),
              executed_at: Time,
              label: String,
              scheduled_at: Time,
              step_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            actions:,
            automation_schedule_template_id:,
            automation_schedule_template_name:,
            executed_at:,
            label:,
            scheduled_at:,
            step_id:
          )
          end

          sig do
            override.returns(
              {
                actions:
                  T::Array[
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::Variants
                  ],
                automation_schedule_template_id: T.nilable(String),
                automation_schedule_template_name: T.nilable(String),
                executed_at: Time,
                label: String,
                scheduled_at: Time,
                step_id: String
              }
            )
          end
          def to_hash
          end

          module Action
            extend Orb::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail,
                  Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment
                )
              end

            class SendEmail < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :recipient

              sig { returns(T::Boolean) }
              attr_accessor :sent

              sig do
                returns(
                  T.nilable(
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail::ActionType::TaggedSymbol
                  )
                )
              end
              attr_reader :action_type

              sig do
                params(
                  action_type:
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail::ActionType::OrSymbol
                ).void
              end
              attr_writer :action_type

              sig do
                params(
                  recipient: T.nilable(String),
                  sent: T::Boolean,
                  action_type:
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail::ActionType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(recipient:, sent:, action_type: nil)
              end

              sig do
                override.returns(
                  {
                    recipient: T.nilable(String),
                    sent: T::Boolean,
                    action_type:
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail::ActionType::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module ActionType
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail::ActionType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SEND_EMAIL =
                  T.let(
                    :send_email,
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail::ActionType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::SendEmail::ActionType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class RetryPayment < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :amount_attempted

              sig { returns(T.nilable(String)) }
              attr_accessor :currency

              sig { returns(T.nilable(String)) }
              attr_accessor :failure_reason

              sig do
                returns(
                  Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::Outcome::TaggedSymbol
                )
              end
              attr_accessor :outcome

              sig { returns(T.nilable(String)) }
              attr_accessor :payment_provider

              sig { returns(T.nilable(String)) }
              attr_accessor :payment_provider_transaction_id

              sig { returns(T.nilable(String)) }
              attr_accessor :payment_transaction_record_id

              sig do
                returns(
                  T.nilable(
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::ActionType::TaggedSymbol
                  )
                )
              end
              attr_reader :action_type

              sig do
                params(
                  action_type:
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::ActionType::OrSymbol
                ).void
              end
              attr_writer :action_type

              sig do
                params(
                  amount_attempted: T.nilable(String),
                  currency: T.nilable(String),
                  failure_reason: T.nilable(String),
                  outcome:
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::Outcome::OrSymbol,
                  payment_provider: T.nilable(String),
                  payment_provider_transaction_id: T.nilable(String),
                  payment_transaction_record_id: T.nilable(String),
                  action_type:
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::ActionType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                amount_attempted:,
                currency:,
                failure_reason:,
                outcome:,
                payment_provider:,
                payment_provider_transaction_id:,
                payment_transaction_record_id:,
                action_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount_attempted: T.nilable(String),
                    currency: T.nilable(String),
                    failure_reason: T.nilable(String),
                    outcome:
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::Outcome::TaggedSymbol,
                    payment_provider: T.nilable(String),
                    payment_provider_transaction_id: T.nilable(String),
                    payment_transaction_record_id: T.nilable(String),
                    action_type:
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::ActionType::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module Outcome
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::Outcome
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUCCEEDED =
                  T.let(
                    :succeeded,
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::Outcome::TaggedSymbol
                  )
                FAILED =
                  T.let(
                    :failed,
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::Outcome::TaggedSymbol
                  )
                SKIPPED =
                  T.let(
                    :skipped,
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::Outcome::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::Outcome::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module ActionType
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::ActionType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                RETRY_PAYMENT =
                  T.let(
                    :retry_payment,
                    Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::ActionType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::RetryPayment::ActionType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Properties::Action::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        # The event this payload describes.
        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVOICE_AUTOMATION_SCHEDULE_STEP_EXECUTED =
            T.let(
              :"invoice.automation_schedule_step_executed",
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
