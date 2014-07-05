class Building < ActiveRecord::Base
  def self.upgrading
    where.not(upgrade_started_at: nil)
  end

  def self.upgradable
    where(upgrade_started_at: nil).where("level < th_max_level")
  end

  def start_upgrade
    touch(:upgrade_started_at)
  end

  def cancel_upgrade
    update_attribute(:upgrade_started_at, nil)
  end

  def complete_upgrade
    self.upgrade_started_at = nil
    self.level += 1
    self.save!
  end
end
