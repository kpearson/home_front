class Repo
  def self.service
    @service = GithubService.new
  end

  def self.all
    service.repos.map { |repo| _build_object(repo) }
  end

  def self._build_object(data)
    OpenStruct.new(data)
  end
end
