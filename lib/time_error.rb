require 'date'
require 'json'
require 'net/http'

class TimeError
  def initialize(requester, time)
    @requester = requester
    @time = time
  end
  # Returns difference in seconds between server time
  # and the time on this computer
  def error
    return get_server_time - @time.now
  end

private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

#below is what needs to really be passed 
=begin
error = TimeError.new(Net::HTTP, Time)
p error.error
=end

