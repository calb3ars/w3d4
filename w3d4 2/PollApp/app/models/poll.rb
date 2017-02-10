# == Schema Information
#
# Table name: polls
#
#  id        :integer          not null, primary key
#  title     :text             not null
#  author_id :integer          not null
#

class Poll < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :author_id, presence: true

  has_many :questions,
    class_name: "Question",
    primary_key: :id,
    foreign_key: :poll_id

      has_many :answer_choices,
        through: :questions,
        source: :answer_choices

        # nested associations have to be enabled
        # has_many :responses,
        #   through: :answer_choices,
        #   source: :responses

  belongs_to :authors,
    class_name: "User",
    primary_key: :id,
    foreign_key: :author_id
end
