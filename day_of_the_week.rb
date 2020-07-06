# @param {Integer} day
# @param {Integer} month
# @param {Integer} year
# @return {String}
require 'date'
def day_of_the_week(day, month, year)
  date_string = year.to_s + '-' + month.to_s + '-' + day.to_s
  new_date = Date.parse(date_string)
  return new_date.strftime("%A") 
end
