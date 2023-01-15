class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        Freebie.create(company: name, dev: dev.name)
    end

    def oldest_company
        self.founding_year.minimum
    end
end
