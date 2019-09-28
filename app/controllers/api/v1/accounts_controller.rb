class Api::V1::AccountsController < Api::V1::ApiController
  def index
    @accounts = Account.all
    render json: @accounts
  end
end
