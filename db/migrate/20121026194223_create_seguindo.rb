class CreateSeguindo < ActiveRecord::Migration
  def change
    create_table :seguindo do |t|
      t.references :pessoa
      t.references :quem
      t.string :tipo

      t.timestamps
    end
    add_index :seguindo, :pessoa_id
    add_index :seguindo, :quem_id
  end
end
