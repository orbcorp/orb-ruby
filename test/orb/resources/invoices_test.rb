# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::InvoicesTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.invoices.create(
      currency: "USD",
      invoice_date: "2019-12-27T18:11:19.117Z",
      line_items: [
        {
          end_date: "2023-09-22",
          item_id: "4khy3nwzktxv7",
          model_type: :unit,
          name: "Line Item Name",
          quantity: 1,
          start_date: "2023-09-22",
          unit_config: {unit_amount: "unit_amount"}
        }
      ],
      net_terms: 0
    )

    assert_pattern do
      response => Orb::Models::InvoiceModel
    end

    assert_pattern do
      response => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_date: Time,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceModel::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceModel::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end

  def test_update
    response = @orb.invoices.update("invoice_id")

    assert_pattern do
      response => Orb::Models::InvoiceModel
    end

    assert_pattern do
      response => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_date: Time,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceModel::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceModel::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end

  def test_list
    response = @orb.invoices.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::InvoiceModel
    end

    assert_pattern do
      row => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_date: Time,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceModel::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceModel::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end

  def test_fetch
    response = @orb.invoices.fetch("invoice_id")

    assert_pattern do
      response => Orb::Models::InvoiceModel
    end

    assert_pattern do
      response => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_date: Time,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceModel::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceModel::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end

  def test_fetch_upcoming_required_params
    response = @orb.invoices.fetch_upcoming(subscription_id: "subscription_id")

    assert_pattern do
      response => Orb::Models::InvoiceFetchUpcomingResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceFetchUpcomingResponse::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        target_date: Time,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end

  def test_issue
    response = @orb.invoices.issue("invoice_id")

    assert_pattern do
      response => Orb::Models::InvoiceModel
    end

    assert_pattern do
      response => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_date: Time,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceModel::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceModel::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end

  def test_mark_paid_required_params
    response = @orb.invoices.mark_paid("invoice_id", payment_received_date: "2023-09-22")

    assert_pattern do
      response => Orb::Models::InvoiceModel
    end

    assert_pattern do
      response => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_date: Time,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceModel::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceModel::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end

  def test_pay
    response = @orb.invoices.pay("invoice_id")

    assert_pattern do
      response => Orb::Models::InvoiceModel
    end

    assert_pattern do
      response => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_date: Time,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceModel::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceModel::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end

  def test_void
    response = @orb.invoices.void("invoice_id")

    assert_pattern do
      response => Orb::Models::InvoiceModel
    end

    assert_pattern do
      response => {
        id: String,
        amount_due: String,
        auto_collection: Orb::Models::AutoCollectionModel,
        billing_address: Orb::Models::AddressModel | nil,
        created_at: Time,
        credit_notes: ^(Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel]),
        currency: String,
        customer: Orb::Models::CustomerMinifiedModel,
        customer_balance_transactions: ^(Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel]),
        customer_tax_id: Orb::Models::CustomerTaxIDModel | nil,
        discount: Orb::Unknown,
        discounts: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount]),
        due_date: Time | nil,
        eligible_to_issue_at: Time | nil,
        hosted_invoice_url: String | nil,
        invoice_date: Time,
        invoice_number: String,
        invoice_pdf: String | nil,
        invoice_source: Orb::Models::InvoiceModel::InvoiceSource,
        issue_failed_at: Time | nil,
        issued_at: Time | nil,
        line_items: ^(Orb::ArrayOf[Orb::Models::InvoiceLineItemModel]),
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        memo: String | nil,
        metadata: ^(Orb::HashOf[String]),
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        paid_at: Time | nil,
        payment_attempts: ^(Orb::ArrayOf[Orb::Models::PaymentAttemptModel]),
        payment_failed_at: Time | nil,
        payment_started_at: Time | nil,
        scheduled_issue_at: Time | nil,
        shipping_address: Orb::Models::AddressModel | nil,
        status: Orb::Models::InvoiceModel::Status,
        subscription: Orb::Models::SubscriptionMinifiedModel | nil,
        subtotal: String,
        sync_failed_at: Time | nil,
        total: String,
        voided_at: Time | nil,
        will_auto_issue: Orb::BooleanModel
      }
    end
  end
end
