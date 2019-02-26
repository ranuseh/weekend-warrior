# Write a program that will take a year and report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# ```plain
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400

def leap_year?(date)
  if (date % 4).zero?
    if ((date % 100).zero? && (date % 400).zero?) || !(date % 100).zero?
      return true
    end
  end
  return false
end
