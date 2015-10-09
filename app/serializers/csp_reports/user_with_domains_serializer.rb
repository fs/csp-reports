module CspReports
  class UserWithDomainsSerializer < ActiveModel::Serializer
    attributes :report_uri

    has_many :domains, serializer: DomainSerializer, embed: :objects

    private

    def report_uri
      "https://openx.srcclr.io/report-uri/#{object.report_uri_hash}"
    end
  end
end
