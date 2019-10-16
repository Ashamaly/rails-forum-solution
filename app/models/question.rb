class Question < ApplicationRecord

    include HasGravatar

    has_many :answers
       
    validates :email, presence: true
    validates :body
end
