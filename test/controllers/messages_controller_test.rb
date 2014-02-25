require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "should create a message when finished" do
    assert_difference('Message.count') do
      post :create, { app: "rolen-example", user: "rolentle@gmail.com",
                      url: "http://rolen-example.herokuapp.com", head: "73101b7",
                      head_long: "73101b7757dea3079293515ee68b22df247213c6",
                      git_log: "* Rolen Le: edits" }
    end
  end
end
