describe UsersController do
  render_views

  describe '#index' do
    context 'html' do
      before do
        get :index, format: :json,
                    params: { desired_fields: [:username, :last_name] }
      end

      it 'responds with a 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'response with proper fields' do
        resp_fields = JSON.parse(response.body)['data'].first.keys
        undesired_fields = User.attribute_names - resp_fields

        expect(resp_fields).not_to include *undesired_fields
      end
    end

    context 'json' do
      before { get :index }

      it 'responds with a 200' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
