require 'test_helper'

class HookTest < ActiveSupport::TestCase
  test "it knows its valid params" do
    hook = Hook.create(app: true, user: true)
    params = hook.valid_params

    assert params.include? "app"
  end
end
