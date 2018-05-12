require 'rails_helper'

describe MemberService do
  subject { MemberService.new('CO')}

  describe 'initialize' do
    it 'exists with a valid state' do
      expect(subject).to be_a MemberService
    end
  end

  describe 'instance methods' do
    describe '#members' do
      it 'returns a collection of members' do
        VCR.use_cassette('MemberService#members') do
          expect(subject.members.count).to eq(7)
          expect(subject.members.first).to be_a Member
        end
      end
    end
  end
end
