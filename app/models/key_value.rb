require 'observer'

class KeyValue < ActiveRecord::Base
  after_save :notify

  attribute_accessible :key, :value

  def notify
    notify_observers(self, self.value)
  end


end
