def time_string(seconds)
    
    hours=(seconds/3600).to_i
    mins=((seconds-(hours*3600))/60).to_i
    secs=((seconds-hours*3600-(mins*60))).to_i

    if hours<10
    hours = "0"+hours.to_s
    end
    if mins<10
        mins = "0"+mins.to_s
    end
    if secs<10
        secs = "0"+secs.to_s
    end
    return "#{hours}:#{mins}:#{secs}"
end