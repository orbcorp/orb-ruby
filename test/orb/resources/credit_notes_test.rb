# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::CreditNotesTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.credit_notes.create(
      line_items: [
        {
          amount: "amount",
          invoice_line_item_id: "4khy3nwzktxv7"
        }
      ]
    )

    assert_pattern do
      response => Orb::Models::CreditNote
    end
  end

  def test_list
    response = @orb.credit_notes.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::CreditNote
    end
  end

  def test_fetch
    response = @orb.credit_notes.fetch("credit_note_id")

    assert_pattern do
      response => Orb::Models::CreditNote
    end
  end
end
