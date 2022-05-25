require 'time_error'
require 'date'

RSpec.describe TimeError do
  it 'gets the difference in time' do
    fake_server = double :server
    fake_time_now = double :time, now: Time.new(2022,5,25, 19,26,03)
    allow(fake_server).to receive(:get)
      .with(URI("https://worldtimeapi.org/api/ip"))
      .and_return('{"abbreviation":"BST",
                  "client_ip":"2a00:23c7:b686:5501:cd1d:d5f8:878e:1733",
                  "datetime":"2022-05-25T20:26:03.213239+01:00",
                  "day_of_week":3,
                  "day_of_year":145,
                  "dst":true,
                  "dst_from":"2022-03-27T01:00:00+00:00",
                  "dst_offset":3600,
                  "dst_until":"2022-10-30T01:00:00+00:00",
                  "raw_offset":0,
                  "timezone":"Europe/London",
                  "unixtime":1653506763,
                  "utc_datetime":"2022-05-25T19:26:03.213239+01:00",
                  "utc_offset":"+01:00",
                  "week_number":21}')
    time_diff = TimeError.new(fake_server, fake_time_now)
    expect(time_diff.error).to eq 0.213239 
  end
end
=begin

  it "returns a server time" do
    fake_server = double :server
    allow(fake_server).to receive(:get)
      .with(URI("https://worldtimeapi.org/api/ip"))
      .and_return('{"abbreviation":"BST",
                  "client_ip":"2a00:23c7:b686:5501:cd1d:d5f8:878e:1733",
                  "datetime":"2022-05-25T20:26:03.213239+01:00",
                  "day_of_week":3,
                  "day_of_year":145,
                  "dst":true,
                  "dst_from":"2022-03-27T01:00:00+00:00",
                  "dst_offset":3600,
                  "dst_until":"2022-10-30T01:00:00+00:00",
                  "raw_offset":0,
                  "timezone":"Europe/London",
                  "unixtime":1653506763,
                  "utc_datetime":"2022-05-25T19:26:03.213239+01:00",
                  "utc_offset":"+01:00",
                  "week_number":21}')
    time_diff = TimeError.new(fake_server, Time)
    expect(time_diff.get_server_time).to eq DateTime.parse("2022-05-25T19:26:03.213239+01:00").to_time
  
=end 


    
