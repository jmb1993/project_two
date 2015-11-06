class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
t.string :username
t.text :password
      t.timestamps null: false
      def change
        add_column :users, :password_digest, :string
      end
    end
  end
end
