# frozen_string_literal: true

module Orb
  module Models
    class CreditNoteSummaryModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute credit_note_number
      #
      #   @return [String]
      required :credit_note_number, String

      # @!attribute memo
      #   An optional memo supplied on the credit note.
      #
      #   @return [String, nil]
      required :memo, String, nil?: true

      # @!attribute reason
      #
      #   @return [String]
      required :reason, String

      # @!attribute total
      #
      #   @return [String]
      required :total, String

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!attribute voided_at
      #   If the credit note has a status of `void`, this gives a timestamp when the
      #     credit note was voided.
      #
      #   @return [Time, nil]
      required :voided_at, Time, nil?: true

      # @!parse
      #   # @param id [String]
      #   # @param credit_note_number [String]
      #   # @param memo [String, nil]
      #   # @param reason [String]
      #   # @param total [String]
      #   # @param type [String]
      #   # @param voided_at [Time, nil]
      #   #
      #   def initialize(id:, credit_note_number:, memo:, reason:, total:, type:, voided_at:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
