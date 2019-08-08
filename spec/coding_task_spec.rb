#require the file to test
require './coding_task.rb'

# 1st level - describe the file
describe 'coding_task' do
  # 2nd level - describe methods
  describe '#array' do
    test_data = [91, 89, 213, 1, 4]
    subject { array(test_data)}

    #3rd level - explain method
    it 'sorts date' do
      #4th level - expectations
      expect(subject).to eq([1, 4, 89, 91, 213])
    end
  end
  #-----------------------------------------------------
  describe '#name_age' do
    test_data = [{name: 'Bella', age: 8}, {name: 'Iry', age: 8}, {name:'Ayden', age: 7}]
    subject { name_age(test_data)}

    it 'sorts details by name and age' do
      expect(subject).to eq(["My name is Bella. I am 8 years old.", "My name is Iry. I am 8 years old.", "My name is Ayden. I am 7 years old."])
    end
  end
  #-----------------------------------------------------
  describe '#fb' do
    players = [{ name: 'Zlatan', brand: 'Nike'}, { name: 'Walcott', brand: 'ADIDAS'}]
    context 'if brand is NIKE'
    subject { players[0][:brand].upcase }

    it 'add players to brand nike' do
      expect(subject).to eq(["Zlatan"])
    end
  end
end
