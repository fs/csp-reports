# name: csp-reports
# about: CSP Violations Reporter
# version: 0.0.1

gem("enumerize", "1.1.0")

require(File.expand_path("../lib/csp_reports", __FILE__))

register_asset("stylesheets/csp_reports/csp-reports.css.scss")

after_initialize do
  require(File.expand_path("../app/models/user", __FILE__))
  require(File.expand_path('../app/jobs/shared_domain', __FILE__))
  require(File.expand_path('../app/mailers/shared_domain_mailer', __FILE__))
end

Discourse::Application.routes.append do
  mount CspReports::Engine, at: "/csp-reports"
end
