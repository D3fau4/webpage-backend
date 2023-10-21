module Backend
  module Persistence
    module Relations
      class Projects < ROM::Relation[:sql]
        schema(:projects, infer: true) do
          associations do
            has_many :articles_projects
            many_to_many :articles, through: :articles_projects
          end
        end
      end
    end
  end
end
