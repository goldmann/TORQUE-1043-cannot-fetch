class FetchTester
    include TorqueBox::Injectors

    def initialize(options = {})
      @queue = fetch('/topics/launcher')
      puts @queue
    end
    def run
      puts "Running"
    end
end
