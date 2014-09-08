class Locker < ActiveRecord::Base
  validates :name, 
            uniqueness: true, 
            presence: true
            
  validates_format_of :name, 
  with: (/^(S|M|L)([1-9][0-9]{0,2}|1000)(,([1-9][0-9]{0,2}|1000))*$/), 
  multiline: true, 
  on: :create

  has_one :bag

  def self.search(search)
    where(name: search).first
  end

end
