class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebies(dev, item_name, value)
        Freebie.create(item_name: item_name, dev_id: dev.id, value: value, company_id: self.id)
    end

    def self.oldest_company
        sorted_companies=self.all.sort_by{|c| c.founding_year}
        sorted_companies.first
    end
end
