module ConvertkitV3
  class Client
    attr_reader :api_key

    def initialize(api_key=ENV['CONVERT_KIT_API'])
      @api_key = api_key
    end

    def url
      "https://api.convertkit.com/v3/"
    end

    def get_request(path)
      request = RestClient.get "#{url}#{path}",
        params: { :api_key => api_key }
      JSON.parse(request)
    end
  end
end
