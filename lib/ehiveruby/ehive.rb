require 'httparty'
class Ehive
  include HTTParty
  format :json
  base_uri 'https://ehive.com'

  def initialize(key, community = nil)
    @key = key
    community.nil? ? @endpoint =  '/api/v2' : @endpoint = "/api/v2/communities/#{community}"
  end

  def accounts(options={})
    options.merge!({ trackingId: @key })
    query_string = options.to_a.map { |x| "#{x[0]}=#{x[1]}" }.join("&")
    self.class.get("#{@endpoint}/accounts?#{query_string}")
  end

  def account(account_id)
    self.class.get("#{@endpoint}/accounts/#{account_id}?trackingId=#{@key}")
  end
end