require 'rails_helper'

describe Member do
  let (:attributes) {
    {
      name: 'Nikhil Shahi',
      role: 'Representative',
      district: '9',
      party: 'Democrat'
    }
  }

  subject { Member.new(attributes)}

  context 'Initialize' do
    it 'Exists with valid attributes' do
      expect(subject.name).to eq('Nikhil Shahi')
      expect(subject.role).to eq('Representative')
      expect(subject.district).to eq('9')
      expect(subject.party).to eq('Democrat')
    end
  end
end
