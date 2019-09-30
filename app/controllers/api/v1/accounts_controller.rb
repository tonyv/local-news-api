class Api::V1::AccountsController < Api::V1::ApiController
  def index
    if(params[:city])
      @accounts = AccountSearchService.new(params).process()
      render json: @accounts
    else
      render json: "City parameter is missing\n", status: 400
    end
  end
end
