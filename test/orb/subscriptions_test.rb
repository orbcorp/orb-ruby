require 'orb/model'
require 'orb/models/subscription'
require 'orb/models/subscription_fetch_costs_response'
require 'orb/orb'
require 'test/unit'

class SubscriptionsResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
        end
        def test_create
            response = @orb.subscriptions.create()
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end
        def test_list
            response = @orb.subscriptions.list()
            assert(Orb::Converter.same_type?(Orb::Resources::SubscriptionPage, response), response.class.to_s)
        end
        def test_cancel_required_params
            response = @orb.subscriptions.cancel("string", cancel_option: "end_of_subscription_term")
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.subscriptions.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end
        def test_fetch_costs
            response = @orb.subscriptions.fetch_costs("string")
            assert(Orb::Converter.same_type?(Orb::Models::SubscriptionFetchCostsResponse, response), response.class.to_s)
        end
        def test_fetch_schedule
            response = @orb.subscriptions.fetch_schedule("string")
            assert(Orb::Converter.same_type?(Orb::Resources::SubscriptionFetchScheduleResponsePage, response), response.class.to_s)
        end
        def test_schedule_plan_change_required_params
            response = @orb.subscriptions.schedule_plan_change("string", change_option: "requested_date")
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end
        def test_trigger_phase
            response = @orb.subscriptions.trigger_phase("string")
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end
        def test_unschedule_cancellation
            response = @orb.subscriptions.unschedule_cancellation("string")
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end
        def test_unschedule_fixed_fee_quantity_updates_required_params
            response = @orb.subscriptions.unschedule_fixed_fee_quantity_updates("string", price_id: "string")
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end
        def test_unschedule_pending_plan_changes
            response = @orb.subscriptions.unschedule_pending_plan_changes("string")
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end
        def test_update_fixed_fee_quantity_required_params
            response = @orb.subscriptions.update_fixed_fee_quantity("string", price_id: "string", quantity: 0)
            assert(Orb::Converter.same_type?(Orb::Models::Subscription, response), response.class.to_s)
        end

end