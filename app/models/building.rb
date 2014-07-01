class Building < ActiveRecord::Base
  def self.upgrading
    where.not(upgrade_started_at: nil)
  end
  def self.upgradable
    where(upgrade_started_at: nil).where(":level < :th_max_level", {level: self.level, th_max_level: self.th_max_level})
  end
end
