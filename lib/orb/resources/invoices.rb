require "orb/model"
require "orb/models/invoice"
require "orb/models/invoice_fetch_upcoming_response"
require "orb/pagination"
module Orb
  module Resources
    class InvoicePage < Page
      required :data, Orb::ArrayOf.new(Orb::Models::Invoice)
    end

    class InvoicesResource
      attr_reader
      def initialize(client:)
        @client = client
      end
      def create(
        currency: Orb::NotGiven.instance,
        invoice_date: Orb::NotGiven.instance,
        line_items: Orb::NotGiven.instance,
        net_terms: Orb::NotGiven.instance,
        customer_id: Orb::NotGiven.instance,
        external_customer_id: Orb::NotGiven.instance,
        memo: Orb::NotGiven.instance,
        will_auto_issue: Orb::NotGiven.instance
      )
        request = {
          method: :post,
          path: "/invoices",
          body: {
            currency: currency,
            invoice_date: invoice_date,
            line_items: line_items,
            net_terms: net_terms,
            customer_id: customer_id,
            external_customer_id: external_customer_id,
            memo: memo,
            will_auto_issue: will_auto_issue
          },
          query: nil
        }

        @client.request(model: Orb::Models::Invoice, **request)
      end
      def list(
        amount: Orb::NotGiven.instance,
        amount_gt: Orb::NotGiven.instance,
        amount_lt: Orb::NotGiven.instance,
        cursor: Orb::NotGiven.instance,
        customer_id: Orb::NotGiven.instance,
        date_type: Orb::NotGiven.instance,
        due_date: Orb::NotGiven.instance,
        due_date_window: Orb::NotGiven.instance,
        due_date_gt: Orb::NotGiven.instance,
        due_date_lt: Orb::NotGiven.instance,
        external_customer_id: Orb::NotGiven.instance,
        invoice_date_gt: Orb::NotGiven.instance,
        invoice_date_gte: Orb::NotGiven.instance,
        invoice_date_lt: Orb::NotGiven.instance,
        invoice_date_lte: Orb::NotGiven.instance,
        is_recurring: Orb::NotGiven.instance,
        limit: Orb::NotGiven.instance,
        status: Orb::NotGiven.instance,
        subscription_id: Orb::NotGiven.instance
      )
        request = {
          method: :get,
          path: "/invoices",
          query: {
            amount: amount,
            "amount[gt]": amount_gt,
            "amount[lt]": amount_lt,
            cursor: cursor,
            customer_id: customer_id,
            date_type: date_type,
            due_date: due_date,
            due_date_window: due_date_window,
            "due_date[gt]": due_date_gt,
            "due_date[lt]": due_date_lt,
            external_customer_id: external_customer_id,
            "invoice_date[gt]": invoice_date_gt,
            "invoice_date[gte]": invoice_date_gte,
            "invoice_date[lt]": invoice_date_lt,
            "invoice_date[lte]": invoice_date_lte,
            is_recurring: is_recurring,
            limit: limit,
            "status[]": status,
            subscription_id: subscription_id
          }
        }

        @client.request(page: InvoicePage, **request)
      end
      def fetch(invoice_id)
        request = { method: :get, path: "/invoices/#{invoice_id}", query: nil }

        @client.request(model: Orb::Models::Invoice, **request)
      end
      def fetch_upcoming(subscription_id: Orb::NotGiven.instance)
        request = {
          method: :get,
          path: "/invoices/upcoming",
          query: {
            subscription_id: subscription_id
          }
        }

        @client.request(
          model: Orb::Models::InvoiceFetchUpcomingResponse,
          **request
        )
      end
      def issue(invoice_id)
        request = {
          method: :post,
          path: "/invoices/#{invoice_id}/issue",
          query: nil
        }

        @client.request(model: Orb::Models::Invoice, **request)
      end
      def mark_paid(
        invoice_id,
        external_id: Orb::NotGiven.instance,
        notes: Orb::NotGiven.instance,
        payment_received_date: Orb::NotGiven.instance
      )
        request = {
          method: :post,
          path: "/invoices/#{invoice_id}/mark_paid",
          body: {
            external_id: external_id,
            notes: notes,
            payment_received_date: payment_received_date
          },
          query: nil
        }

        @client.request(model: Orb::Models::Invoice, **request)
      end
      def void(invoice_id)
        request = {
          method: :post,
          path: "/invoices/#{invoice_id}/void",
          query: nil
        }

        @client.request(model: Orb::Models::Invoice, **request)
      end
    end
  end
end
