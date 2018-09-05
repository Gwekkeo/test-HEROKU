class CreateDons < ActiveRecord::Migration[5.2]
  def change
    create_table :dons do |t|
    	t.belongs_to :user, index: true
    	t.float :don

		t.timestamps
    end
  end
end
