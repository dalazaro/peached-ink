class CollectionsController < ApplicationController

  # get '/collections', to: 'collections#index', as: 'collections'
  def index
    @collections = Collection.all.order('id DESC')
  end

  # get '/collections/new', to: 'collections#new', as: 'new_collection'
  def new
    @collection = Collection.new
  end

  # post '/collections', to: 'collections#create'
  def create
    collection = Collection.new(collection_params)
    collection.user_id = 1
    collection.save
    redirect_to collections_path
  end

  # get '/collections/:collection_id', to: 'collections#show', as: 'collection'
  def show
    @collection = Collection.find_by_id(params[:collection_id])
  end

  # get '/collections/:collection_id/edit', to: 'collections#edit', as: 'edit_collection'
  def edit
    @collection = Collection.find_by_id(params[:collection_id])
  end

  # patch '/collections/:collection_id', to: 'collections#update', as: 'update_collection'
  def update
    collection = Collection.find_by_id(params[:collection_id])
    collection.update_attributes(collection_params)
    redirect_to collection_path(collection)
  end

  # delete '/collections/:collection_id', to: 'collections#destroy'
  def destroy
    collection = Collection.find_by_id(params[:collection_id])
    collection.destroy
    redirect_to collections_path
  end

  private
  def collection_params
    params.require(:collection).permit(:name, :description)
  end

end
