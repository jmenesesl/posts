class TranslatePublicacions < ActiveRecord::Migration[5.2]
  def change
      reversible do |dir|
        dir.up do
          Publicacion.create_translation_table!({
            :title => :string,
            :text => :text
          }, {
            :migrate_data => true
          })
          end
        dir.down do
          # Antes de eliminar la tabla de traduciones, se han de migrar los datos a la tabla original
          # El siguiente codigo se ha extraido de la gema Globalize
          # Especificar los nombres de las columnas que se han se actualizar en la tabla original
        translated_attribute_names = [:title, :text]
         all_translated_attributes = Publicacion.all.collect{|m| m.attributes}
         all_translated_attributes.each do |translated_record|
           # Create a hash containing the translated column names and their values.
           translated_attribute_names.inject(fields_to_update={}) do |f, name|
             f.update({name.to_sym => translated_record[name.to_s]})
           end
           # Now, update the actual model's record with the hash.
           Publicacion.where(Publicacion.primary_key.to_sym => translated_record[Publicacion.primary_key]).update_all(fields_to_update)
         end
          Publicacion.drop_translation_table!
        end
      end
    end
end
