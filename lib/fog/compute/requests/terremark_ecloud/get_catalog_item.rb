module Fog
  module TerremarkEcloud
    class Compute
      class Real

        require 'fog/compute/parsers/terremark_ecloud/get_catalog_item'

        def get_catalog_item(href)
          request({
            :href       => href,
            :idempotent => true,
            :parser     => Fog::Parsers::TerremarkEcloud::Compute::GetCatalogItem.new
          })
        end

      end
    end
  end
end
