require 'rails_helper'

RSpec.describe Responsible, type: :model do
  describe 'Create' do
    describe 'is valid' do
      it 'with all required attributes given' do
        responsible = build(:responsible)

        expect(responsible).to be_valid
      end
    end

    describe 'is invalid' do
      context 'when name' do
        it 'is empty' do
          responsible = build(:responsible, name: "")

          expect(responsible).to be_invalid
        end

        it 'is null' do
          responsible = build(:responsible, name: nil)

          expect(responsible).to be_invalid
        end
      end
    end
  end

  describe 'Update' do
    let(:responsible) { create(:responsible) }

    describe 'is valid' do
      it 'with required attributes given' do
        responsible.name = FFaker::Lorem.sentence

        expect(responsible).to be_valid
      end
    end

    describe 'is invalid' do
      context 'when name' do
        it 'is empty' do
          responsible.name = ""

          expect(responsible).to be_invalid
        end  

        it 'is null' do
          responsible.name = nil

          expect(responsible).to be_invalid
        end  
      end
    end
  end
end
