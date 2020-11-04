
class ChangeUsersRoleIdDefault < ActiveRecord::Migration[5.0]

  def change


    # got error on these: Mysql2::Error: Error on rename of './cisi/#sql-1_26' to './cisi/users' (errno: 150 - Foreign key constraint is incorrectly formed): ALTER TABLE `users` CHANGE `role_id` `role_id` int DEFAULT 7

    # ActiveRecord::Base.connection.execute <<-SQL
    #   SET FOREIGN_KEY_CHECKS=0;
    # SQL

    # ActiveRecord::Base.connection.execute 'SET FOREIGN_KEY_CHECKS=0;' if ActiveRecord::Base.connection.adapter_name == 'Mysql2'
    # ActiveRecord::Base.connection.execute 'SET FOREIGN_KEY_CHECKS=0;' 
    
    # ActiveRecord::Base.connection.disable_referential_integrity do
      puts "commented this out due to errors. find another way."
      puts "I had luck with setting default in the user model 2020-10-29"
      puts "see - after_initialize :init_defaults"
      # change_column :users, :role_id, :integer, :default => 7
      # mysql 8
      # change_column :users, :role_id, :bigint, :default => 3
    # end
  end
  
end

