# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

require 'pry'

def minilang(program)
  register = 0
  stack = []0
  commands = program.split

  commands.each do |command|
    case command.downcase
      when 'push'  then stack << register
      when 'pop'   then register = pop(stack)
      when 'add'   then register = add(register, stack)
      when 'sub'   then register = sub(register, stack)
      when 'mult'  then register = mult(register, stack)
      when 'div'   then register = div(register, stack)
      when 'mod'   then register = mod(register, stack)
      when 'print' then puts register
      else register = command.to_i
    end
  end
end

def pop(stack)
  stack.pop
end


def add(register, stack)
  register + stack.pop
end

def sub(register, stack)
  register - stack.pop
end

def mult(register, stack)
  register * stack.pop
end

def div(register, stack)
  register / stack.pop
end

def mod(register, stack)
  register % stack.pop
end


# minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)