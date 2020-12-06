def staggered_case(words)
  staggered_chars = ''
  need_upcase = true
  words.split('').each do |char|
    if char =~ /[A-Z]/ || char =~ /[a-z]/
      need_upcase ? staggered_chars += char.upcase : staggered_chars += char.downcase
      need_upcase = !need_upcase
    else
      staggered_chars += char
    end
  end
  staggered_chars
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'