module ConvertkitV3
  class Tag < ConvertkitV3::Base
    attr_reader :id, :name

    def initialize(id, name=nil)
      @id = id
      @name = name
    end

    def subscribe(params)
      opts = {email: nil, name: nil}.merge(params)
      post_request("tags/#{id}/subscribe", opts)
    end

    def self.find(id)
      self.new(id)
    end

    def self.all
      tags = ConvertkitV3::Base.new.get_request("tags")["tags"]
      tags.map{|t| ConvertkitV3::Tag.new(t["id"], t["name"])}
    end
  end
end
