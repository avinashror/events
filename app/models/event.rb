class Event < ApplicationRecord
  belongs_to :org

  attribute :timestamp, :datetime
  attribute :string, :string
  attribute :hostname, :string
end
