# == Schema Information
#
# Table name: users
#
#  id        :integer          not null, primary key
#  user_name :text             not null
#

class User < ActiveRecord::Base
  validates :user_name, presence: true

  has_many :polls,
    class_name: "Poll",
    primary_key: :id,
    foreign_key: :author_id

      has_many :questions,
        through: :polls,
        source: :questions

  has_many :responses,
    class_name: "Response",
    primary_key: :id,
    foreign_key: :user_response_id

      has_many :answer_choices,
        through: :responses,
        source: :answer_choice
end
