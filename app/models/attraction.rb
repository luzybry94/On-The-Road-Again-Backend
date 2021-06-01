class Attraction < ApplicationRecord
   belongs_to :trip
    
    

    def date_lg
        self.date.to_formatted_s(:long) 
    end
end
