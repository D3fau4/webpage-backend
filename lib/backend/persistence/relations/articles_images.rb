module Backend
  module Persistence
    module Relations
      class ArticlesImages < ROM::Relation[:sql]
        schema(:articles_images, infer: true) do
          associations do
            belongs_to :articles, on_delete: :cascade
            belongs_to :images, on_delete: :cascade
          end
        end
        auto_struct(true)
      end
    end
  end
end
