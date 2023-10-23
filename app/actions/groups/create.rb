# frozen_string_literal: true

module Backend
  module Actions
    module Groups
      class Create < Backend::Action
        def handle(*, response)
          response.body = self.class.name
        end
      end
    end
  end
end