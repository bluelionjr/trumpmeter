module PollsHelper
  def vote_count
    all_votes = Poll.group(:vote).count
    votes = Hash.new
    all_votes.each do |key, value|
        key = key.upcase
        votes[key] = (value.to_f / Poll.count) * 100
    end
    votes
  end
end
