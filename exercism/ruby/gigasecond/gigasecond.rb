# Time.at is seconds after 1970 epoch
# 1 gigasecond should be Time.at(gigasecond) - 31 years 9 months
class Gigasecond
  VERSION = 1
  GIGASECOND = 1000000000
  def self.from(time_object)  # time_object is Time.utc(year, month, date, hours, minutes, seconds)
    time_object + (GIGASECOND)
  end

end
