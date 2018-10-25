class AddTables < ActiveRecord::Migration[5.2]
  def change

  	create_table :users do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :description
  		t.string :email
  		t.integer :age

      t.timestamps null: false
  	end

  	create_table :privatemessages do |t|
  		t.text :content
      t.references :recipient, index: true
      t.references :sender, index: true
  		# t.integer :sender_id
  		# t.integer :recipient_id
  		t.timestamps
  	end

  	create_table :comments do |t|
  		t.string :content
      t.references :mygossip, index: true, null: true
  		t.references :comment, index: true, null: true
  		t.timestamps
  	end

  	create_table :tags do |t|
  		t.string :title
  	end

    create_join_table :tags, :mygossips do |t|
      t.index [:tag_id, :mygossip_id]
    end

  	create_table :cities do |t|
  		t.string :name
  		t.integer :postal_code
  	end

  	create_table :mygossips do |t|
  		t.string :title
  		t.string :content

  		t.references :user, index: true
  		t.timestamps
  	end

  	create_table :likes do |t|
  		t.references :user, index: true
      t.references :comment, index: true, null: true
      t.references :mygossip, index: true, null: true
  		t.timestamps
  	end
  end
end