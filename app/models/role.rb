class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    Audition.all.select { |audition| audition.role_id == self.id }
  end

  def locations
    roles = self.actors
    roles.pluck(:location)
  end

  def lead
    hired = self.auditions.where ({ hired: true })
    if hired.length == 0
      "no actor has been hired for this role"
    else
      hired.first
    end
  end

  def understudy
    hired = self.auditions.where ({ hired: true })
    if hired.length < 2
      "no actor has been hired for understudy for this role"
    else
      hired.second
    end
  end
end
