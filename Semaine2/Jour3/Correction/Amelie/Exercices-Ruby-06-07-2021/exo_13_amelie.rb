mails = Array.new
50.times do |i|
  if i < 9 
    mails.push("jean.dupont.0#{i+1}@email.fr") 
  else
    mails.push("jean.dupont.#{i+1}@email.fr")
  end 
end

puts mails

