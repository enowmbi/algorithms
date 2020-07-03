# @param {String} date1
# @param {String} date2
# @return {Integer}
require "date"
def days_between_dates(date1, date2)
  date_format = "%Y-%m-%d"
  new_date1 = DateTime.strptime(date1,date_format)
  new_date2 = DateTime.strptime(date2,date_format)
  return (new_date1-new_date2).to_i.abs
end
