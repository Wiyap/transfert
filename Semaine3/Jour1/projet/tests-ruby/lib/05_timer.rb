def time_string(num)
    return Time.at(num).utc.strftime("%T")
end