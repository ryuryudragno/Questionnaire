require 'bundler/setup'
Bundler.require

if development?
    ActiveRecord::Base.establish_connection("sqlite3:db/development.db")
end

class Answer < ActiveRecord::Base#大文字の単数形(History)で定義
    # has_secure_password
    # validates :name,
    #     presence: true,#空欄はだめ
    #     format: {with:/\A\w+\z/}#
    #     # format: {with:/.+@.+/}#@を含む必要がある
    # validates :password,
    #     length: {in: 5..10}#5文字以上10文字以下
    # has_many :tasks#ユーザーが複数のtaskを持つ
end

# class Task < ActiveRecord::Base#大文字の単数形(History)で定義
#     scope :due_over, ->{ where('due_date < ?' ,Date.today).where(completed: [nil,false])}
#     scope :had_by, ->(user){ where(user_id: user.id)}
    
#     validates :title,
#         presence: true#空欄はだめ
#     belongs_to :user#1つタスクが1人のユーザーに所属する
#     belongs_to :list#1つタスクが1人のユーザーに所属する
    
#     def remained_days
#         return (due_date - Date.today).to_i
#     end
# end

# class List < ActiveRecord::Base#大文字の単数形(History)で定義
#     has_many :tasks#ユーザーが複数のtaskを持つ
# end