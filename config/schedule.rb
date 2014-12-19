
set :output, "/log/schedule.log"
every 15.minutes do
  rake "wake:scheduled_targets"
end
