class UnsafeClass
  def unsafe_method(input)
    eval(input)
  end
end

unsafe = UnsafeClass.new
unsafe.unsafe_method("puts 'Hello, World!'")