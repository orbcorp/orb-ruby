# frozen_string_literal: true

module Orb
  module Models
    class CustomerHierarchyConfig < Orb::Internal::Type::BaseModel
      # @!attribute child_customer_ids
      #   A list of child customer IDs to add to the hierarchy. The desired child
      #   customers must not already be part of another hierarchy.
      #
      #   @return [Array<String>, nil]
      optional :child_customer_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute parent_customer_id
      #   The ID of the parent customer in the hierarchy. The desired parent customer must
      #   not be a child of another customer.
      #
      #   @return [String, nil]
      optional :parent_customer_id, String, nil?: true

      # @!method initialize(child_customer_ids: nil, parent_customer_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CustomerHierarchyConfig} for more details.
      #
      #   @param child_customer_ids [Array<String>] A list of child customer IDs to add to the hierarchy. The desired child customer
      #
      #   @param parent_customer_id [String, nil] The ID of the parent customer in the hierarchy. The desired parent customer must
    end
  end
end
