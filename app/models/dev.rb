class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies_list=self.freebies.pluck(:item_name)
        freebies_list.include? (item_name)
    end

    def give_away(dev, freebie)
        if freebie.dev==self
        freebie.update(dev_id: dev.id)
        end
    end
end
