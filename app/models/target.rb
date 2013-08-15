require 'net/http'
class Target < ActiveRecord::Base
  attr_accessible :host, :interval, :path, :next_run
  validates :host, presence: true,
                   format: {with: /\A(\w|[\.])*\z/,
                            message: "only allows letters, numbers, _ and ."}
  validates :interval, presence: true,
                       numericality: {only_integer: true,
                                      greater_than_or_equal_to: 15}
  validate :validate_interval_divisible_by_15


  after_initialize :init

  def init
    self.next_run = 0
    if self.path.nil? or self.path.empty?
      self.path = '/'
    end
  end

  def set_next_run(new_next_run)
    self.next_run = new_next_run
  end

  def wake_up
    puts Net::HTTP.get(self.host, self.path)
  end

  def validate_interval_divisible_by_15
     if self.interval % 15 != 0
       errors.add(:interval, "must be divisible by 15")
     end
  end
end
