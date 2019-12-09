class HarryPotterService
  def find_members(house)
    response = conn.get("v1/characters")
    JSON.parse(response.body, symbolize_names: :true)
  end


private
  def conn
    conn = Faraday.new(url: "https://www.potterapi.com") do |faraday|
      f.adapter  Faraday.default_adapter
      f.params[:key] = ENV[harry_potter_key]
    end
  end
end
