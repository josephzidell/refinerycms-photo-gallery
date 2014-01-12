module Refinery
  module PhotoGallery
    class CollectionsController < ::ApplicationController
      include PhotoGalleryHelper
      helper :'refinery/photo_gallery/photo_gallery'

      def index
        @collections = Collection.has_albums
        @albums = Album.with_collection_id

        respond_to do |format|
          format.html
        end

		present(@page)
      end

      def show
        @collections = Collection.has_albums
        @collection = Collection.find(params[:id])

        @albums = Album.with_collection_id
        @albums_for_collection = Album.find_by_collection_id(params[:id])

        respond_to do |format|
          format.html
        end

		present(@page)
      end

    end
  end
end
