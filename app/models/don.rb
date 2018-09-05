class Don < ApplicationRecord
	belongs_to :user, required: false
end
