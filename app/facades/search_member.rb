class SearchMember
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
end
