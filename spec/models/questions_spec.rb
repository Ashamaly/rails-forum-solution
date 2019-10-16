require 'rails_helper'

RSpec.describe Question, type: :model do
    it "creates new questions with correct fields" do
        Question.create(email: 'tester@gmail.com', body: 'test questions')
        expect(Question.first.email).to eq('tester@gmail.com')
        expect(Question.first.body).to eq('test questions')
    end
    
end