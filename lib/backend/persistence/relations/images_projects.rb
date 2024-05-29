module Backend
  module Persistence
    module Relations
      class ImagesProjects < ROM::Relation[:sql]
        schema(:images_projects, infer: true) do
          associations do
            belongs_to :projects, on_delete: :cascade
            belongs_to :images, on_delete: :cascade
          end
        end
        auto_struct(true)
      end
    end
  end
end
