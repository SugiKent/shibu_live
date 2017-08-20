Time::DATE_FORMATS[:mydt] = lambda { |time|
  if time
    time = time + 9.hours
    time.strftime("%y/%m/%d %H:%M")
  else
    ""
  end
}

Time::DATE_FORMATS[:short_jp] = lambda { |time|
  if time
    time = time + 9.hours
    time.strftime('%m月%d日 %H時%M分')
  else
    ""
  end
}

Time::DATE_FORMATS[:long_jp] = lambda { |time|
  if time
    time = time + 9.hours
    time.strftime('%Y年%m月%d日 %H時%M分')
  else
    ""
  end
}

Time::DATE_FORMATS[:only_date] = "%y/%m/%d"

Time::DATE_FORMATS[:only_month_period] = "%Y.%m"

Time::DATE_FORMATS[:datetime] = "%y/%m/%d %H:%M"

Time::DATE_FORMATS[:localtime_only_date_long_jp] = lambda { |time|
  date = time.to_date
  date.strftime("%Y年%m月%d日")
}

Time::DATE_FORMATS[:only_localtime] = lambda { |time|
  time.strftime("%H:%M")
}

Time::DATE_FORMATS[:yyyy_m_d_jp] = -> (time) {
  time = time + 9.hours
  date = time.to_date
  date.strftime("%Y年%-m月%-d日")
}
Time::DATE_FORMATS[:only_date_long_jp] = lambda { |time|
  time = time + 9.hours
  date = time.to_date
  date.strftime("%Y年%m月%d日")
}

Time::DATE_FORMATS[:time_jp] = '%H時%M分S秒'

Time::DATE_FORMATS[:hour_and_minuet_jp] = '%H時%M分'

Time::DATE_FORMATS[:timeline] = lambda { |time|
  time = time + 9.hours
  time.to_date.to_s(:long_jp_w)
}

Time::DATE_FORMATS[:only_date_long_jp_w] = lambda { |time|
  time = time + 9.hours
  date = time.to_date
  week = ["日", "月", "火", "水", "木", "金", "土"][date.wday]
  date.strftime("%Y年%m月%d日") + "(#{week})"
}

Time::DATE_FORMATS[:spanned_date_localtime] = lambda { |time|
  date = time.to_date
  week = ["日", "月", "火", "水", "木", "金", "土"][date.wday]
  date.strftime("<span>%m</span>月<span>%d</span>日(#{week})")
}

Date::DATE_FORMATS[:yyyy_mm_dd_w] = lambda { |date|
  week = ["日", "月", "火", "水", "木", "金", "土"][date.wday]
  date.strftime("%Y-%m-%d") + "(#{week})"
}

Date::DATE_FORMATS[:yyyy_m_d_w] = lambda { |date|
  week = ["日", "月", "火", "水", "木", "金", "土"][date.wday]
  (date.strftime("%Y-%-m-%-d") + "(#{week})").gsub(/-0/, "-")
}

Date::DATE_FORMATS[:m_d_w] = lambda { |date|
  week = ["日", "月", "火", "水", "木", "金", "土"][date.wday]
  (date.strftime("%-m-%-d") + "(#{week})").gsub(/-0/, "-")
}

Date::DATE_FORMATS[:yymmdd] = "%y%m%d"
Date::DATE_FORMATS[:mmdd] = "%m%d"

Date::DATE_FORMATS[:short_jp] = '%m月%d日'
Date::DATE_FORMATS[:short_jp_w] = lambda { |date|
  week = ["日", "月", "火", "水", "木", "金", "土"][date.wday]
  date.strftime("%-m月%-d日") + "(#{week})"
}

Date::DATE_FORMATS[:long_jp] = '%Y年%m月%d日'

Date::DATE_FORMATS[:long_jp_w] = lambda { |date|
  week = ["日", "月", "火", "水", "木", "金", "土"][date.wday]
  date.strftime("%Y年%-m月%-d日(#{week})")
}

Date::DATE_FORMATS[:timeline] = lambda { |date|
  date.strftime('%m/%d')
}

Date::DATE_FORMATS[:slashed] = '%Y/%m/%d'

Date::DATE_FORMATS[:yyyy_jp] = '%Y年'
Date::DATE_FORMATS[:yyyy_m_jp] = '%Y年%-m月'
Date::DATE_FORMATS[:yyyy_m_d_jp] = '%Y年%-m月%-d日'
Date::DATE_FORMATS[:y_m_d_jp] = '%y年%-m月%-d日'
Date::DATE_FORMATS[:m_d_jp] = '%-m月%-d日'
