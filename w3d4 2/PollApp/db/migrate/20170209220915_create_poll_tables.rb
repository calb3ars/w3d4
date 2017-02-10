class CreatePollTables < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :user_name, unique: true, null: false
    end

    create_table :polls do |t|
      t.text :title, null: false
      t.integer :author_id, null: false
    end

    add_index :polls, :author_id

    create_table :questions do |t|
      t.text :body, null: false
      t.integer :poll_id, null: false
    end

    add_index :questions, :poll_id

    create_table :answer_choices do |t|
      t.integer :question_id, null: false
      t.text :answer_text, null: false
    end

    add_index :answer_choices, :question_id

    create_table :responses do |t|
      t.integer :user_response_id, null: false
      t.integer :answer_choice_id, null: false
    end

    add_index :responses, :user_response_id
    add_index :responses, :answer_choice_id
  end
end
