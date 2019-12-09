class HarryPotterService
  def find_members(house)
    response = conn.get("/v1/characters?key=ENV[harry_potter_key]")
    JSON.parse(response.body, symbolize_names: :true)
  end

  def conn
    conn = Faraday.new(url: "https://www.potterapi.com") do |faraday|
    end
  end
end
