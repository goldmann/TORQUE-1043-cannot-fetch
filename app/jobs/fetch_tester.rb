require 'time'

class FetchTester
    include TorqueBox::Injectors

    def initialize(options = {})
      puts "Fetching..."
      @topic = fetch('/topics/fetcher')
      puts "Got: #{@topic}"
    end
    def run
      puts "Publishing..."
      @topic.publish("Blah, #{Time.now}")
    end
end
