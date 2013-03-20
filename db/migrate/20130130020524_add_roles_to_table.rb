class AddRolesToTable < ActiveRecord::Migration
  def self.up
      Role.create :name => "Super Admin"
      Role.create :name => "Admin"
      Role.create :name => "Staff"
      Role.create :name => "Member"
  end

  def self.down
    Role.destroy_all
  end
end

