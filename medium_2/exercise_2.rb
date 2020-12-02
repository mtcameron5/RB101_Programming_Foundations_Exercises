# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks
# to just those words that do not use both letters
# from any given block. Each block can only be used once.

require 'pry'

def block_word?(string)
  block_of_words = [['BO'], ['XK'], ['DQ'], ['CP'], ['NA'],
                    ['GT'], ['RE'], ['FS'], ['JW'], ['HU'],
                    ['VI'], ['LY'], ['ZM']]
  block_of_words.each { |block| block << true }

  chars = string.upcase().split('')
  can_be_spelled = true

  chars.each do |char|
    block_of_words.each do |block|
      # binding.pry
      if block[0].include?(char)
        if block[1] == false
          can_be_spelled = false
        else
          block[1] = false
        end
      end
    end
  end

  return(can_be_spelled)
end

# Alternatively

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2}
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true