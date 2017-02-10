class AddTimestamps < ActiveRecord::Migration[5.0]
  def change
    add_timestamps(:users)
    add_timestamps(:polls)
    add_timestamps(:questions)
    add_timestamps(:responses)
  end
end
