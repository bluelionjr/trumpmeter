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

  def votes_by_state
    s_votes = Hash.new
    state_polls = Hash.new
    all_polls = Poll.all
    all_polls.each do |key, value|
      if key.user.state == current_user.state
        state_polls[key] = key[value]
      end
    end
    # approve = 0
    # disapprove = 0
    # novote = 0
    # state_polls.each do |k, v|
    #   if k == "approve"
    #     approve += 1
    #   elsif k == "disapprove"
    #     disapprove += 1
    #   elsif k == "novote"
    #     novote += 1
    #   end
    # end

    # s_votes = {"approve" => approve, "disapprove" => disapprove, "novote" => novote}
    state_polls
  end


end
