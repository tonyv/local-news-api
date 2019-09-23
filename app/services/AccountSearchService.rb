class AccountSearchService
  def new
    @consumer_key = ENV['TWITTER_CONSUMER_KEY']
    @consumer_secret = ENV['TWITTER_CONSUMER_SECRET']

    @consumer = OAuth::Consumer.new(@consumer_key, @consumer_secret,
                                    site: 'https://api.twitter.com')
  end

  def process
    response = @consumer.request(:get, 'https://api.twitter.com/1.1/users/search.json?q=sacramento', nil, {}, {})
    puts response
  end
end
