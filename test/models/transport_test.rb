require "test_helper"

class TransportTest < ActiveSupport::TestCase
    test "not save transport without name and consumption" do

        transport = Transport.new
        assert_not transport.save, "Saved a transport without a name and a consumption"
    end

    class Transport < ApplicationRecord
      validates :name, presence: true
      validates :co2, presence: true
    end
end
