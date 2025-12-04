require 'erb'

class UserInput
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def render_unsafe
    ERB.new(@input).result
  end
end

user_input = UserInput.new("<%= `id` %>")
puts user_input.render_unsafe