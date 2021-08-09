email_box = []

50.times do |i|
    if (i <= 8)
        email_box = email_box.push("jean.dupont.0#{i+1}@email.fr")
    else
        email_box = email_box.push("jean.dupont.#{i+1}@email.fr")
    end
    if (((i+1)%2) == 0) && (i >= 1)
        puts email_box[i]
    end
end
