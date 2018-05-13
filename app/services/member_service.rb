class MemberService

  def initialize(state)
    @state = state
  end

  def members
    raw_members.map { |raw_member| Member.new(raw_member) }
  end

  private

  def conn
    Faraday.new(url: "https://api.propublica.org/congress/v1/members/house/#{@state}/current.json")
  end

  def response
    response ||= conn.get do |request|
      request.headers['X-API-KEY'] = ENV['propublica_key']
    end
  end

  def raw_members
    JSON.parse(response.body, symbolize_names: true)[:results]
  end
end
