module CspReports
  class Domain < ActiveRecord::Base
    belongs_to :user

    has_many :reports, foreign_key: "csp_reports_domain_id"
  end
end
