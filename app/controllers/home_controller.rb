class HomeController < ApplicationController
  def index
    @tiles = current_user.tiles
    if current_user.github_token
      repo = Repo.new(current_user.github_token)
      @repos = repo.all
    end
  end

  def github_initial_auth_request
    auth_params = "?client_id=#{ENV["GITHUB_ID"]}&redirect_uri=http://localhost:3000/auth/github/callback/code"
    github_auth_url = "https://github.com/login/oauth/authorize/" + auth_params
    redirect_to github_auth_url
  end

  def github_token_request
    conn = Faraday.new("https://github.com")
    conn.headers = { "Accept" => "application/json" }
    conn.params  = { "client_id" => ENV["GITHUB_ID"],
                     "client_secret" => ENV["GITHUB_SECRET"],
                     "code" => params[:code]
    }
    responce = JSON.parse(conn.post("/login/oauth/access_token").body)
    current_user.github_token = responce["access_token"]
    redirect_to home_path
  end
end
