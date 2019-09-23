class AccountsController < ApiController
  def index
    @account = AccountSearchService.new.process()
  end
end
