class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: { status: 'SUCCESS', data: users }
  end
  
  # def index
  #   users = [
  #     {
  #       id: 1,
  #       access_token: "access_token1",
  #       refresh_token: "refresh_token1",
  #       account_id: "account_id1"
  #     },
  #     {
  #       id: 2,
  #       access_token: "access_token2",
  #       refresh_token: "refresh_token2",
  #       account_id: "account_id2"
  #     },
  #     {
  #       id: 3,
  #       access_token: "access_token3",
  #       refresh_token: "refresh_token3",
  #       account_id: "account_id3"
  #     },
  #     {
  #       id: 4,
  #       access_token: "access_token4",
  #       refresh_token: "refresh_token4",
  #       account_id: "account_id4"
  #     },
  #     {
  #       id: 5,
  #       access_token: "access_token5",
  #       refresh_token: "refresh_token5",
  #       account_id: "account_id5"
  #     },
  #   ]
  #   render json: users,
  #           status: 200
  # end
end
