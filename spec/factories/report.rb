FactoryGirl.define do
  factory :report, class: CspReports::Report do
    result "document-uri" => "https://example.com/foo/bar",
           "referrer" => "https://www.google.com/",
           "violated-directive" => "default-src self",
           "original-policy" => "default-src self; report-uri /csp-hotline.php",
           "blocked-uri" => "http://evilhackerscripts.com"
    created_at Time.zone.now
  end
end
