require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'Create' do
    describe 'is valid' do
      it 'with all required attributes given' do
        task = build(:task)
        expect(task).to be_valid
      end
    end

    describe 'is invalid' do
      context 'when title' do
        it 'is null' do
          task = build(:task, title: nil)
          expect(task).to be_invalid
        end

        it 'is empty' do
          task = build(:task, title: "")
          expect(task).to be_invalid
        end
      end

      context 'when description' do
        it 'is null' do
          task = build(:task, description: nil)
          expect(task).to be_invalid
        end

        it 'is empty' do
          task = build(:task, description: "")
          expect(task).to be_invalid
        end
      end
    end
  end
end
