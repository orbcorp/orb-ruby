# typed: true

class BaseClient
  sig { params(requester: T.nilable(String)).void }
  def initialize(requester:); end
end
