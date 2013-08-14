require 'net/http'
namespace :wake do
  desc "Wake all targets"
  task :all_targets => :environment do
    for target in Target.all do
      puts Net::HTTP.get(target.host, target.path)
    end
  end

end
