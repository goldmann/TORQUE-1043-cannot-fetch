require 'time'
require 'torquebox-cache'

class FetchTester
    include TorqueBox::Injectors

    def initialize(options = {})
      puts "Fetching..."
      @topic = fetch('/topics/fetcher')
      puts "Got: #{@topic}"
      @pr_cache   = TorqueBox::Infinispan::Cache.new(
        :name    => 'pull_requests',
        # do not persist while I am testing
        # :persist => '/data/treasure'
      )
    end
    def run
      puts "Publishing..."
      @topic.publish("Blah, #{Time.now}")
    end
end
