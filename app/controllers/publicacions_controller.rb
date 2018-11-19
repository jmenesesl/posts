class PublicacionsController < ApplicationController
  $pages = 3;
  def list
    I18n.locale = params.has_key?(:lang)? params[:lang] : :en
    @publicacions = Publicacion.all.paginate(:page => params[:page], :per_page => $pages)
    render 'list'
  end

  def edit
    # Creo un nuevo objeto por defecto estableciendole parametros
    @publicacion = Publicacion.new(title: params[:title_esp][:title_esp], text: params[:text_esp][:text_esp], category: params[:category_esp][:category_esp], created_at: 'now()')
    # Define la traducción en el idioma especificado
    @publicacion.attributes = { title: params[:title_esp][:title_esp], locale: :es }
    @publicacion.attributes = { text: params[:text_esp][:text_esp], locale: :es }
    @publicacion.attributes = { title: params[:title_eng][:title_eng], locale: :en }
    @publicacion.attributes = { text: params[:text_eng][:text_eng], locale: :en }
    @publicacion.attributes = { title: params[:title_cat][:title_cat], locale: :ca }
    @publicacion.attributes = { text: params[:text_cat][:text_cat], locale: :ca }
    @publicacion.save
    @publicacions = Publicacion.all.paginate(:page => params[:page], :per_page => $pages)
    redirect_to publicacions_list_path
  end

  def list_all
    # Opcion de: si encuentra campo nulo, dar otra traduccion completamente, en todos los campos
    Globalize.fallbacks = {:en => [:es, :ca], :ca => [:es, :en]}
    I18n.locale = :en
    @publicacions = Publicacion.all.paginate(:page => params[:page], :per_page => $pages)
  end
end
