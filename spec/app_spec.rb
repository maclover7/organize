require 'spec_helper'

describe 'App' do
  def app
    Rack::Builder.parse_file('config.ru').first
  end

  it "handles GET to '/'" do
    get '/'
    expect(last_response).to be_ok
  end
end
