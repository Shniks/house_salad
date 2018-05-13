class Member
  attr_reader :name, :role, :district, :party

  def initialize(attributes)
    @name       = attributes[:name]
    @role       = attributes[:role]
    @district  = attributes[:district]
    @party      = attributes[:party]
  end
end
