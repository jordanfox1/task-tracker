module TaskStatus
  extend ActiveSupport::Concern

  STATUSES = %w[todo in_progress done].freeze
end
