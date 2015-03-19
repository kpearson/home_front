class Repo
  def initialize(github_token)
    @service = GithubService.new(github_token)
  end

  def all
    @service.repos.map { |repo| _build_object(repo) }
  end

  def all_names
    all.map { |repo| repo.name }
  end

  def repo_feed(repo)
    @service.repo_feed(repo)
  end

  def _build_object(data)
    begin
      OpenStruct.new(data)
    rescue NoMethodError => error
      redirect_to home_path
    end
  end
end
