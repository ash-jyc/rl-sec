import ctypes

def create_string(size):
    return ctypes.create_string_buffer(size)

def overflow_string(s):
    s[len(s)+1] = 'X'

s = create_string(20)
overflow_string(s)