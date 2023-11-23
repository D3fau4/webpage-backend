# frozen_string_literal: true

module Backend
  module Actions
    module Missions
      class Show < Backend::Action
        include Deps[repo: 'repositories.missions']

        params do
          required(:slug).value(:string)
        end

        def handle(request, response)
          halt 500, { message: request.params.errors }.to_json unless request.params.valid?
          mission = repo.find_by_slug(request.params[:slug])
          response.format = :json
          halt 200, mission.to_json if mission
          halt 404, { message: 'not_found' }.to_json
        end
      end
    end
  end
end
