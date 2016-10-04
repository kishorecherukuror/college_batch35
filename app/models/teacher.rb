class Teacher < ActiveRecord::Base
	validates :f_name,:l_name, :age, :email, presence: true
	validates :address, length: { in: 5..20 }
	validates :age, numericality: { only_integer: true }
	validate :check_age
	before_save :createName

	def createName
		self.name = self.f_name + " " + self.l_name  
	end
	def check_age
		errors.add(:age, "shold be beteen 13 to 80") unless self.age.to_i > 13 || self.age.to_i > 80			
	end
end
