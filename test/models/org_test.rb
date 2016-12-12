require 'test_helper'

class OrgTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  	test "last_n_events" do
  		o1 = Org.create
  		e1 = Event.create(org: o1)
  		e2 = Event.create(org: o1)
  		e3 = Event.create(org: o1)
  		assert o1.last_n_events(2).count == 2
	end

	test "last_n_events_for_host" do
  		o1 = Org.create
  		e1 = Event.create(org: o1, hostname: "host1")
  		e2 = Event.create(org: o1, hostname: "host1")
  		e3 = Event.create(org: o1, hostname: "host2")
  		assert o1.last_n_events_for_host(3, "host1").count == 2
	end
end
