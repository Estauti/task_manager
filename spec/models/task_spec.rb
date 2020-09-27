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

      context 'when due date' do
        it 'is null' do
          task = build(:task, due_date: nil)
          expect(task).to be_invalid
        end

        it 'is before creation' do
          task = build(:task, due_date: DateTime.now - 1.hour)
          expect(task).to be_invalid
        end
      end

      context 'when responsible' do
        it 'is null' do
          task = build(:task, responsible: nil)
          expect(task).to be_invalid
        end
      end
    end

    describe 'raises an error' do
      context 'when status' do
        it 'is not one of the available' do
          expect do
            build(:task, status: FFaker::Lorem.word)
          end.to raise_error(ArgumentError)
        end
      end

      context 'when priority' do
        it 'is not one of the available' do
          expect do
            build(:task, priority: FFaker::Lorem.word)
          end.to raise_error(ArgumentError)
        end
      end
    end
  end
end
