class JobController < ApplicationController
  def wake_scheduled
    @jobOutput = `bundle exec rake wake:scheduled_targets`
  end
end
