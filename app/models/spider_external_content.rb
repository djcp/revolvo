require 'net/http'
require 'uri'

class SpiderExternalContent

  attr_accessor :url
  def initialize(url)
    @url = url
  end

  def to_s
    uri = URI.parse(@url)
    http = Net::HTTP::new(uri.host,uri.port)

    req = Net::HTTP::Get.new(uri.request_uri + ((uri.fragment.blank?) ? '' : '#' + uri.fragment ))
    req.initialize_http_header({"User-Agent" => 'MongoCrawl'})
    response = http.request(req)
    response.body
  end

end
