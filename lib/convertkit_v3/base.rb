module ConvertkitV3
  class Base

    def self.api_key=(key)
      @@api_key = key
    end

    def self.api_key
      @@api_key
    end

    def url
      "https://api.convertkit.com/v3/"
    end

    def api_key
       ENV["CONVERTKIT_API_KEY"] || ConvertkitV3::Base.api_key
    end

    def get_request(path, params={})
      request = RestClient.get "#{url}#{path}",
        params: { :api_key => api_key }.merge(params)
      JSON.parse(request)
    end

    def post_request(path, params)
      request = RestClient.post "#{url}#{path}",
        { :api_key => api_key }.merge(params)
      JSON.parse(request)
    end
  end
end
