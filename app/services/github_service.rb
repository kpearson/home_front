class GithubService

  attr_reader :connection

  def initialize(github_token)
    @connection = Faraday.new(url: "https://api.github.com")
    @connection.headers = { "Authorization" => "token #{github_token}" }
  end

  def repos
    JSON.parse(connection.get("user/repos").body)
  end

  def repo_feed(repo)
    owner = "kpearson"
    JSON.parse(connection.get("/repos/#{owner}/#{repo}/notifications").body)
  end

end
