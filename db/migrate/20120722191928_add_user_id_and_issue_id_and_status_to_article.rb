class AddUserIdAndIssueIdAndStatusToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :user_id, :int
    add_column :articles, :issue_id, :int
    add_column :articles, :status, :string
  end
end
