# frozen_string_literal: true

RSpec.describe 'GET /projects/:id', type: %i[request database] do
  let(:projects) { app['persistence.rom'].relations[:projects] }

  context 'when a project matches the given slug' do
    let!(:project_slug) do
      projects.insert(title: 'MUAJAJAJAJA3', slug: 'muajajajajaj', description: 'a')
    end

    it 'renders the project' do
      get "/projects/#{projects.first[:slug]}"

      expect(last_response).to be_successful

      response_body = JSON.parse(last_response.body)

      expect(response_body).to include(
        'title' => 'MUAJAJAJAJA3', 'slug' => 'muajajajajaj', 'description' => 'a'
      )
    end

    it 'renders 1 project 100 times' do
      100.times do
        get "/projects/#{projects.first[:slug]}"
      end

      expect(last_response).to be_successful

      response_body = JSON.parse(last_response.body)

      expect(response_body).to include(
        'title' => 'MUAJAJAJAJA3', 'slug' => 'muajajajajaj', 'description' => 'a'
      )
    end
  end

  context 'when no project matches the given id' do
    it 'returns not found' do
      get '/projects/jejejeje'

      response_body = JSON.parse(last_response.body)

      expect(response_body).to eq(
        'message' => 'No encontrado'
      )
    end
  end
end
