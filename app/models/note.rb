class Note < ActiveRecord::Base
    validates :name, presence: true
    validates :production, presence: true
    def find_by_name(name)
        
    end
    
    def self.get_unique_column_values(column)
        Note.uniq.pluck(column)
    end
end
