class Publicacion < ApplicationRecord
  translates :title, :text, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations
end
