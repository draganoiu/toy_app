class Articole<ActiveRecord::Base
	belongs_to :user

validates :title, presence: true,length: {minimun: 3, maximum: 30}
validates :description, presence: true,length: {minimum:3, maximum: 3000}
validates :user_id,presence: true
	

end