class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    validates :color, inclusion: { in: ['white', 'black','red', 'grey', 'cream']}, presence: true 
    validates :sex, inclusion: { in: ['M', 'F']}, presence: true 
    validates :name, :birth_date, :description, presence: true 
    def age
        distance_of_time_in_words(birth_date, DateTime.now)
    end 
end
