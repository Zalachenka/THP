def time_string(time)
  Time.at(time).utc.strftime("%T")
end