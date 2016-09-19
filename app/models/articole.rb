class Articole<ActiveRecord::Base

validates :title, presence: true,length: {minimun: 3, maximum: 30}
validates :description, presence: true,length: {minimum:3, maximum: 3000}

	

end