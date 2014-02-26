class Message < ActiveRecord::Base
  after_create :send_to_hooks

  def send_to_hooks
    Hook.all.each { |hook| hook.post_message(self) }
  end
end
