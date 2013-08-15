
set :output, "/log/schedulue.log"
#later on, loop through available intervals and do this for each
every 15.minutes do
  rake "wake:scheduled_targets"
end
