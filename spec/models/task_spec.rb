require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'バリデーション' do
    it 'titleは必須項目であること' do
      task = Task.new
      task.valid?
      expect(task.errors[:title]).to include("can't be blank")
    end
  end
end
