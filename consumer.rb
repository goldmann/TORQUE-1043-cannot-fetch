class Consumer < TorqueBox::Messaging::MessageProcessor
  def initialize(opts = {})
  end

  def on_message(msg)
    puts "Got message: #{msg}"
  end

end
