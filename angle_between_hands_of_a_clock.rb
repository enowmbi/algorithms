# @param {Integer} hour
# @param {Integer} minutes
# @return {Float}
def angle_clock(hour, minutes)
  angel = (hour*30 + 30.0/(60.0/minutes) - minutes*6).abs
  angel > 180.0 ? 360.0 - angel : angel
end
