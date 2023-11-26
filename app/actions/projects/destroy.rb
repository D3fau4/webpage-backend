# frozen_string_literal: true

module Backend
  module Actions
    module Projects
      class Destroy < Backend::Action
        include Deps[repo: 'repositories.projects']

        before :validate_params

        params do
          required(:id).value(:integer)
        end

        def handle(request, _response)
          repo.delete(request.params[:id])
          halt 200, { message: '¡Éxito! Se ha eliminado el objeto correctamente' }.to_json
        end
      end
    end
  end
end
