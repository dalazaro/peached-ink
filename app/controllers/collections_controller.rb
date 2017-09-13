class CollectionsController < ApplicationController

  # get '/collections', to: 'collections#index', as: 'collections'
  def index
    @user = User.find(1)
    @collections = Collection.where user_id: @user.id
  end

  # get '/collections/new', to: 'collections#new', as: 'new_collection'
  def new
    if session[:user_id]
      @collection = Collection.new
    else
      flash[:error] = 'You are not authorized to create a new collection.'
      redirect_to collections_path
    end
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
    if @collection.user_id != session[:user_id]
      flash[:error] = 'You are not authorized to edit this collection.'
      redirect_to collection_path(params[:collection_id])
    end
  end

  # patch '/collections/:collection_id', to: 'collections#update', as: 'update_collection'
  def update
    collection = Collection.find_by_id(params[:collection_id])
    if collection.user_id != session[:user_id]
      flash[:error] = 'You are not authorized to edit this collection.'
    else
      collection.update_attributes(collection_params)
    end
    redirect_to collection_path(collection)
  end

  # delete '/collections/:collection_id', to: 'collections#destroy'
  def destroy
    collection = Collection.find_by_id(params[:collection_id])
    if collection.user_id != session[:user_id]
      flash[:error] = 'You are not authorized to delete this collection.'
      redirect_to collection_path
    else
      collection.destroy
    end
    redirect_to collections_path
  end

  private
  def collection_params
    params.require(:collection).permit(:name, :description)
  end

end
