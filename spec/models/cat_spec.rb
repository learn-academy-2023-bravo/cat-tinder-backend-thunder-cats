require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name" do 
    cat = Cat.create
    expect(cat.errors[:name]).to_not be_empty
  end

  it "doesnt add cat without an age" do
    cat = Cat.create
    expect(cat.errors[:age]).to_not be_empty
  end

  it "doesnt add cat without a breed" do
    cat = Cat.create
    expect(cat.errors[:breed]).to_not be_empty
  end

  it "doesnt add cat without hobbies" do
    cat = Cat.create
    expect(cat.errors[:hobbies]).to_not be_empty
  end

  it "doesnt add cat without a image" do
    cat = Cat.create
    expect(cat.errors[:image]).to_not be_empty
  end

  it "should have hobbies statement >= 10" do 
    cat = Cat.create(name:'Buster', age:6, hobbies:"stuff", image:'busterdoingnothing.com')
    expect(cat.errors[:hobbies]).to_not be_empty
  end
end
