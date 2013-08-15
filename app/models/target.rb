require 'net/http'
class Target < ActiveRecord::Base
  attr_accessible :host, :interval, :path, :next_run

  def set_next_run(new_next_run)
    self.next_run = new_next_run
  end

  def wake_up
    puts Net::HTTP.get(self.host, self.path)
  end
end
