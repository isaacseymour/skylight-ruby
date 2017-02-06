require "spec_helper"

module Skylight
  describe "Normalizers", "request.faraday", :agent do
    uri = URI("https://google.com/path?query")
    name, title, desc = normalize(env: Faraday::Env.new(url: uri, method: :get))

    expect(name).to eq("api.http.get")
    expect(title).to eq("GET google.com")
    expect(desc).to eq({ path: "/path" }.to_json)
  end
end
