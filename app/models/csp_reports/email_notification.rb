module CspReports
  class EmailNotification < ActiveRecord::Base
    extend Enumerize

    belongs_to :domain, foreign_key: "csp_reports_domain_id"
    belongs_to :user

    enumerize :notification_type, in: %w(daily weekly monthly), predicates: true
  end
end
