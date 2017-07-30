require 'rails_helper'

describe TokensController, type: :request do
  let (:user) do
    create(
      :user,
      email: 'leagueuser@example.com',
      password: 'P@ssw0rd'
    )
  end

  describe 'tokens#create' do
    it 'is ok' do
      post(
        '/oauth/token',
        params: {
          grant_type: 'password',
          username: user.email,
          password: 'P@ssw0rd'
        }
      )

      binding.pry
      # expect(response).to be :ok
    end
  end

  describe '#destroy' do; end
end
