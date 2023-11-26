# frozen_string_literal: true

module Backend
  module Actions
    module Projects
      class Create < Backend::Action
        include Deps[repo: 'repositories.projects']

        before :validate_params

        params do
          required(:project).hash do
            required(:title).filled(:string)
            required(:slug).filled(:string)
          end
        end

        def handle(request, _response)
          request.params[:project][:uuid] = generate_uuid
          handle_server_error unless (project = repo.create(request.params[:project]))

          halt 201, { message: '¡Éxito! Se ha creado el objeto correctamente', data: project.to_h }.to_json
        end
      end
    end
  end
end
