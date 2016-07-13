class Calendar
  property :current_time

  def initialize(current_time = Time.now)
    @current_time = current_time
  end

  def year
    current_time.year
  end

  def month
    current_time.month
  end

  def friday_yet?
    current_time.friday?
  end

  def day
    current_time.day
  end

  def days_until_yom_kippur
    # October 11, 2016
    days_remaining = yom_kippur.day_of_year - current_time.day_of_year
    case
    when 0 < days_remaining < 20
      "YAY! only #{days_remaining} days to go"
    when days_remaining < 0
      "Oops, you missed it."
    else
      "Still a while to go"
    end
  end

  private def yom_kippur
    Time.new(2016,10,11)
  end

end

cal = Calendar.new
puts cal.friday_yet?

cal = Calendar.new
puts cal.days_until_yom_kippur

cal = Calendar.new(Time.new(2016,10,1)) # October 1
puts cal.days_until_yom_kippur

cal = Calendar.new(Time.new(2016,10,12)) # October 12
puts cal.days_until_yom_kippur
