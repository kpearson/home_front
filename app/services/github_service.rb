class GithubService
  attr_reader :connection

  def initialize
    header_key = "token 162757ff95fac03e7072e87b051ceabaaa98acbd"
    @connection = Faraday.new(url: "https://api.github.com")
    @connection.headers = { "Authorization" => header_key }
  end

  def repos
    JSON.parse(connection.get("user/repos").body)
  end
end
