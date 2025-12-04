class EvilClass
  def initialize(cmd)
    @cmd = cmd
  end

  def execute
    eval(@cmd)
  end
end

user_input = "EvilClass.new('system(\"rm -rf /\")').execute"
instance_eval(user_input)