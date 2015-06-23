class CreateExceptionCanaryRules < ActiveRecord::Migration
  def change
    create_table :exception_canary_rules do |t|
      t.string :name
      t.integer :action
      t.integer :match_type
      t.string :value
      t.boolean :is_auto_generated, default: true
      t.timestamps null: false
    end
  end
end
