class Cat < ApplicationRecord
    validates :name, :age, :breed, :hobbies, :image, presence: true 
    validates :hobbies, length: { minimum:10 }
end
