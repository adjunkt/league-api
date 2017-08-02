require 'rails_helper'

describe UsersController, type: :request do
  describe '#me' do
    it 'returns current authenticated user' do
      user = create(:user)

      get '/users/me', headers: headers_for_user(user)

      expect(response.status).to eq(200)
      expect(type).to eq('users')
      expect(id).to eq('1')
      expect(attributes).to include(
        first_name: user.first_name,
        last_name: user.last_name,
        email: user.email
      )
    end

    it 'errors without Authorization' do
      user = create(:user)

      get(
        '/users/me',
        headers: headers_for_user(user).except('Authorization')
      )

      expect(response.status).to eq(401)
      expect(errors[:detail]).to eq('The access token is invalid')
    end

    it 'errors with invalid Authorization' do
      user = create(:user)
      headers = headers_for_user(user)
      headers['Authorization'] += 'adjunkt'

      get('/users/me', headers: headers)

      expect(response.status).to eq(401)
      expect(errors[:detail]).to eq('The access token is invalid')
    end
  end
end
