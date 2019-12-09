class Member
  attr_reader :name, :role, :house, :patronis

  def initialize(member_info)
    @name = member_info[:name]
    @role = member_info[:role]
    @house = member_info[:house]
    @patronis = member_info[:patronis]
  end

end
