class Job < ApplicationRecord

	belongs_to :user
	validates :user_id, presence: true
	acts_as_commontable

end
