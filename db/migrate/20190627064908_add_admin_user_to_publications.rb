class AddAdminUserToPublications < ActiveRecord::Migration[5.1]
  def change
    add_reference :publications, :admin_user, foreign_key: true
  end
end
