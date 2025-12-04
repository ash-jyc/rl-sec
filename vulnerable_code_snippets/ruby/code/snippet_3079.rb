class VulnerableString < String
  def initialize(str)
    super(str[0..1024])
  end
end

def create_vulnerable_string(user_input)
  VulnerableString.new(user_input)
end

def process_user_input(user_input)
  str = create_vulnerable_string(user_input)
  # Do something with str
end

process_user_input("Attacker controlled string")