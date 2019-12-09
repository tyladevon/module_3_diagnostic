class HarryPotterService
  def find_members(house)
    response = conn.get("v1/characters")
    JSON.parse(response.body, symbolize_names: :true)
  end


private
  def conn
    result = Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params[:key] = ENV['harry_potter_key']
      binding.pry
    end
  end
end
