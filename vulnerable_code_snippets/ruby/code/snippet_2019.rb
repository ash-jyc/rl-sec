class VulnerableClass
  @@vulnerable_variable = 0

  def self.increment_vulnerable_variable
    sleep(rand(1..3)) # simulate some delay
    @@vulnerable_variable += 1
  end
end

threads = []

10.times do
  threads << Thread.new { VulnerableClass.increment_vulnerable_variable }
end

threads.each(&:join)

puts "Final value of vulnerable variable: #{VulnerableClass.instance_variable_get(:@@vulnerable_variable)}"