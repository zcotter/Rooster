require 'net/http'
puts Net::HTTP.get('roosterapp.herokuapp.com', '/job/wake_scheduled')