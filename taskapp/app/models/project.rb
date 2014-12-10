class Project < ActiveRecord::Base
  has_many :tasks
  validates :title,
  presence: {message: "入力必須項目です"},
  length: {minimum: 3, message: "短すぎます！"}
end
