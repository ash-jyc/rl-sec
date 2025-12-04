class EvalVulnerability
  def initialize(input)
    @input = input
  end

  def perform_dangerous_operation
    eval(@input)
  end
end

user_input = "system('rm -rf /')" # This is an example of untrusted input
vulnerability = EvalVulnerability.new(user_input)
vulnerability.perform_dangerous_operation