# frozen_string_literal: true

module Orb
  module Models
    class CustomerHierarchyConfigModel < Orb::BaseModel
      # @!attribute [r] child_customer_ids
      #   A list of child customer IDs to add to the hierarchy. The desired child
      #     customers must not already be part of another hierarchy.
      #
      #   @return [Array<String>, nil]
      optional :child_customer_ids, Orb::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :child_customer_ids

      # @!attribute parent_customer_id
      #   The ID of the parent customer in the hierarchy. The desired parent customer must
      #     not be a child of another customer.
      #
      #   @return [String, nil]
      optional :parent_customer_id, String, nil?: true

      # @!parse
      #   # @param child_customer_ids [Array<String>]
      #   # @param parent_customer_id [String, nil]
      #   #
      #   def initialize(child_customer_ids: nil, parent_customer_id: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
