require 'rails_helper'

describe Devise::SessionsController, type: :request do
  let (:user) do
    create(
      :user,
      email: 'leagueuser@example.com',
      password: 'P@ssw0rd'
    )
  end

  describe 'sessions#create' do
    it 'is ok' do
      post(
        '/users/login',
        params: {
          identification: user.email,
          password: 'P@ssw0rd'
        }
      )

      binding.pry
      # expect(response).to be :ok
    end
  end

  describe '#destroy' do; end
end
