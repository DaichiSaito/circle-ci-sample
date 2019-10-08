require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'バリデーション' do
    it 'titleは必須項目であること' do
      task = Task.new
      task.valid?
      expect(task.errors[:title]).to include("can't be blank")
    end

    it 'contentは必須項目であること' do
      task = Task.new
      task.valid?
      expect(task.errors[:content]).to include("can't be blank")
    end

    it 'titleは100文字以内であること' do
      task = Task.new(title: "a" * 101)
      task.valid?
      expect(task.errors[:title]).to include("is too long (maximum is 100 characters)")
    end
  end
end
