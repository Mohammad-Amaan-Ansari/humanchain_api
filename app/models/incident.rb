class Incident < ApplicationRecord
  SEVERITY_LEVELS = %w[Low Medium High].freeze

  validates :title, :description, :severity, presence: true
  validates :severity, inclusion: { in: SEVERITY_LEVELS, message: "%{value} is not a valid severity level" }

  before_create :set_reported_at

  private

  def set_reported_at
    self.reported_at ||= Time.current
  end
end
