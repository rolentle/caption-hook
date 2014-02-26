require 'uri'
class Hook < ActiveRecord::Base

  def post_message(message)
    raise StandardError unless url_path
    connection.post do |req|
      req.url url_path
      hook_params(message).each do |k,v|
        req.params[k.to_s] = v
      end
    end
  end

  def hook_params(message)
    valid_params.each_with_object({}) do |param, hash|
      hash[param] = message.send(param)
    end
  end

  def valid_params
    params = { app: app, user: user, post_url: post_url,
               head: head, head_long:  head_long, git_log: git_log}
    params.keys.select { |param| params[param] == true }
  end

  def connection
    Faraday.new(:url => url_domain) do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end

  def url_domain
    uri = URI.parse(url)
    "#{uri.scheme}://#{uri.host}"
  end

  def url_path
    URI.parse(url).path
  end
end
