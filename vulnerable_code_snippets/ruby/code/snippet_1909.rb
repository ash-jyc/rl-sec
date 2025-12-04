require 'thread'

class Counter
  def initialize
    @mutex = Mutex.new
    @count = 0
  end

  def increment(thread_name)
    @mutex.synchronize do
      puts "#{thread_name} is accessing count"
      temp = @count
      sleep(rand(2)) # simulate work
      @count = temp + 1
      puts "#{thread_name} set count to #{@count}"
    end
  end
end

counter = Counter.new

threads = []

10.times do |i|
  threads << Thread.new { counter.increment("Thread-#{i}") }
end

threads.each(&:join)