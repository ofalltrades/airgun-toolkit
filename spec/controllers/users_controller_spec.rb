describe UsersController do
  render_views

  describe '#index' do
    context 'html' do
      before { get :index, format: :json }

      it 'responds with a 200' do
        byebug
        expect(response).to have_http_status(:ok)
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
