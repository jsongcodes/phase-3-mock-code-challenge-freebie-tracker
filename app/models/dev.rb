class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :company, through: :freebies
end
