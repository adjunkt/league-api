require 'rails_helper'

describe TokensController, type: :request do
  let (:user) do
    create(
      :user,
      email: 'leagueapiuser@example.com',
      password: 'P@ssw0rd'
    )
  end

  describe 'tokens#create' do
    context 'when valid' do
      it 'returns token' do
        post(
          '/oauth/token',
          params: {
            grant_type: 'password',
            username: user.email,
            password: 'P@ssw0rd'
          }
        )

        expect(Doorkeeper::AccessToken.count).to eq(1)
        expect(json['access_token'].size).to eq(64)
        expect(json['token_type']).to eq('bearer')
        expect(json['expires_in']).to eq(7200)
        expect(json['created_at']).to be_present
        expect(response.status).to eq(200)
        expect(session[:current_user_id]).to eq(user.id)
      end
    end

    context 'when not valid' do
      it 'returns 401 for invalid username' do
        post(
          '/oauth/token',
          params: {
            grant_type: 'password',
            username: 'wrong@email.com',
            password: 'P@ssw0rd'
          }
        )

        expect(response.status).to eq(401)
        expect(json['error']).to eq('invalid_grant')
      end

      it 'returns 401 for invalid password' do
        post(
          '/oauth/token',
          params: {
            grant_type: 'password',
            username: user.email,
            password: 'th1s!sN0tr1ght'
          }
        )

        expect(response.status).to eq(401)
        expect(json['error']).to eq('invalid_grant')
      end
    end
  end

  describe 'tokens#destroy' do
    it 'valid token is revoked' do
      access_token = create(:access_token)

      post('/oauth/revoke', params: { token: access_token.token })

      expect(response.status).to eq(200)
      access_token.reload
      expect(access_token.acceptable?(nil)).to be(false)
    end

    it 'invalid token does not error' do
      post('/oauth/revoke', params: { token: 'alekfjalefkjaelfkj' })

      expect(response.status).to eq(200)
    end
  end
end

private

def json
  JSON.parse(response.body)
end
