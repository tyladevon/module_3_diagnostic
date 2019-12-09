class SearchMember
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def members
    service = HarryPotterService.new
    member_data = service.find_members(house)
    member_data.map do |member|
      Member.new(member_info)
    end
  end

  def count_of_members
    members.count
  end
end
