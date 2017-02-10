# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  question_id :integer          not null
#  answer_text :text             not null
#

class AnswerChoice < ActiveRecord::Base
  validates :question_id, :answer_text, presence: true

  has_many :responses,
    class_name: "Response",
    primary_key: :id,
    foreign_key: :answer_choice_id

      has_many :respondents,
        through: :responses,
        source: :respondent

  belongs_to :questions,
    class_name: "Question",
    primary_key: :id,
    foreign_key: :question_id


end
