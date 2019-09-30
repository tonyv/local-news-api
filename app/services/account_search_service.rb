class AccountSearchService
  URL = "https://api.twitter.com"

  def initialize(params)
    @city = params[:city]
    @consumer = OAuth::Consumer.new(ENV['TWITTER_CONSUMER_KEY'],
                                    ENV['TWITTER_CONSUMER_SECRET'], site: URL)
    @access_token = OAuth::AccessToken.new(@consumer, ENV['TWITTER_ACCESS_TOKEN'],
                                            ENV['TWITTER_ACCESS_TOKEN_SECRET'])
  end

  def process
    response = @consumer.request(:get, "https://api.twitter.com/1.1/users/search.json?q=#{@city}", @access_token, {}, {})
    JSON.parse(response.body)
  end
end
