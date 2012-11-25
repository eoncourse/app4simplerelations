class Employee < ActiveRecord::Base
  attr_accessible :email, :hired, :name, :note, :position, :wage
  has_one :address
  has_many :tasks

  validates :email,
            :presence => true,
            :format => {
                :with => /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/,
                :message => 'has wrong format'
            }

  validates :name,
            :presence => {:message => 'is required'}

  def list_tasks
    tasks.map { |x| x.name }.join(', ')
  end
end
