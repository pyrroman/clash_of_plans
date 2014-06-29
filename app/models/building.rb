class Building < ActiveRecord::Base
  def self.upgrading
    where.not(upgrade_started_at: nil)
  end
end
