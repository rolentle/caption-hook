class Hook < ActiveRecord::Base

  def post_message(message)
    Faraday.post url, hook_params(message)
  end

  def hook_params(message)
    valid_params.each_with_object({}) do |param, hash|
      hash[param] = message.send(param.to_sym)
    end
  end

  def valid_params
    params = { "app" => app, "user" => user,
               "post_url" => post_url, "head" => head,
               "head_long" => head_long, "git_log" => git_log}
    params.keys.select { |param| params[param] == true }
  end

end
