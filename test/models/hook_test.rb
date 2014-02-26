require 'test_helper'

class HookTest < ActiveSupport::TestCase

  test "it knows the domain and path" do
    hook = Hook.create(url: "http://hook-ends.herokuapp.com/hooks", app: true, user: true)
    assert_equal "http://hook-ends.herokuapp.com", hook.url_domain
    assert_equal "/hooks", hook.url_path
  end


  test "it knows its valid params" do
    hook = Hook.create(url: "http://hook-ends.herokuapp.com/hooks", app: true, user: true)
    params = hook.valid_params
    assert params.include? :app
  end

  test "hook params return hash of params" do
    message = Message.create(app: "rolen-example", user: "rolentle@gmail.com", url: "http://rolen-example.herokuapp.com", head: "73101b7", head_long: "73101b7757dea3079293515ee68b22df247213c6", git_log: "* Rolen Le: edits")
    hook = Hook.create(url: "http://hook-ends.herokuapp.com/hooks", app: true, user: true)
    params = hook.hook_params(message)
    assert_equal params, { app: "rolen-example", user: "rolentle@gmail.com" }
  end

end
