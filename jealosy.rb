puts "*" * 27
puts "  Welcome to JEALOSY TEST  "
puts "*" * 27
puts "Are you more jealous than most? Take Dr Eddie's test\n\n"

puts "What is your name?"
user = gets.chomp.capitalize

puts "OK, #{user}, you are going to answer 14 questions.\nAnswer 'yes' or 'no'.\nIn the end you will know your level of jealosy"
puts "Good luck!)\n\n"

sleep 1

questions = [
  "1. Accusing partner of looking or giving attention to other people.",
  "2. Questioning of your partner's behaviour",
  "3. Interrogation of phone calls, including wrong numbers or accidental phone calls, and all other forms of communication",
  "4. Not allowing any social media accounts, Facebook, Twitter, etc",
  "5. Going through the partner’s belongings",
  "6. Always asking where the partner is and who they are with",
  "7. Isolating your partner from their family and friends",
  "8. Not letting the partner have personal interests or hobbies outside the house", 
  "9. Controlling the partner's social circle", 
  "10. Claiming the partner is having an affair when they withdraw", 
  "11. Accusing the partner of holding affairs when sexual activity stops.", 
  "12. Verbal and/or physical violence towards the partner, the individual who is considered to be the rival, or both", 
  "13. Denying the jealous behaviour unless cornered",
  "14. Threatening to harm others or themselves"
]
results = [
  "You are too jealous. Maybe it is time to work on your self esteem?", 
  "You are moderate, and that's great! Your partner is lucky to have you)", 
  "You seem indifferent to your partner. Or maybe you just 100\% trust them"
]
yes_answers = 0

for item in questions do
  print "\n" + item + "\n> "
  user_input = gets.chomp.downcase

  while (user_input != "yes") && (user_input != "no")
    puts "Enter 'yes' or 'no'"
    user_input = gets.chomp.downcase
  end

  yes_answers += 1 if user_input == "yes"
end

puts "-"*45
puts "#{user}, you answered 'YES' to #{yes_answers} questions.\n"
sleep 1


if yes_answers > 6
  puts " *** " + results[0].upcase + " *** "
elsif yes_answers > 3
  puts " *** " + results[1].upcase + " *** "
else
  puts " *** " + results[2].upcase + " *** "
end

puts "-"*45 + "\nSource: https://www.rte.ie/lifestyle/living/2019/0730/1066087-are-you-more-jealous-than-most-take-dr-eddies-test/"







