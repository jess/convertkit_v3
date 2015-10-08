module ConvertkitV3
  class Tag
  end

  class Client
    def tags
      # https://api.convertkit.com/v3/courses?api_key=key
      get_request("courses")
    end
  end
end
