class CreatePublicacions < ActiveRecord::Migration[5.2]
  def change
    # Las tablas se crean en dos partes: una parte se crea aqui, y las columnas que
    # se usan para traducir, se crean en el fichero de migracion de traducciones
    # al realizar el rollback, la gema hace la migracion de los datos a
    # la tabla original
    create_table :publicacions do |t|
      t.column :title, :string, :limit => 32
      t.column :text, :text
      t.column :category, :text
      t.column :created_at, :timestamp
    end
  end
end
