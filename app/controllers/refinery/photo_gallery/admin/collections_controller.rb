module Refinery
  module PhotoGallery
    module Admin
      class CollectionsController < ::Refinery::AdminController
        cache_sweeper CollectionSweeper

        crudify :'refinery/photo_gallery/collection', :order => "created_at DESC" , :xhr_paging => true
      end
    end
  end
end
