
namespace :wake do
  desc "Wake all targets"
  task :all_targets => :environment do
    for target in Target.all do
      target.wake_up
    end
  end

  desc "Wake targets that are scheduled to be awakened now"
  task :scheduled_targets => :environment do
    for target in Target.all do
      if target.next_run == 0
        target.wake_up
        #set next_run back to interval
        target.set_next_run(target.interval)
      else
        target.set_next_run(target.next_run - 15)
      end
    end
  end

end
