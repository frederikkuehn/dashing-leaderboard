require 'net/http'
require 'json'

gamebot_url = 'GAMEBOT_URL'
team_id = 'TEAM_ID'

SCHEDULER.every '30s', :first_in => 0 do |job|
  uri = URI("#{gamebot_url}api/seasons/current/?team_id=#{team_id}")
  response = Net::HTTP.get(uri)
  data = JSON.parse(response)
  result = Array.new
  data['_embedded']['user_ranks'].each do |standing|
    result.push({
      rank: standing['rank'],
      player:standing['user_name'],
      wins: standing['wins'],
      losses: standing['losses'],
      elo: standing['elo']
    })
  end
  send_event('gamebot-leaderboard', { standings: result })
end
