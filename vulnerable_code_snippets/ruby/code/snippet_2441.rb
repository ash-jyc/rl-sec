class VulnerableCommandInjection
  def initialize(command)
    @command = command
  end

  def execute_command
    `#{@command}`
  end
end

vulnerable_command = VulnerableCommandInjection.new("ls -l")
puts vulnerable_command.execute_command