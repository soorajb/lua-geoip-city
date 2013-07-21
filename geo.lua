require('luarocks.require')

local geoip_city = require 'geoip.city'

local geoip_city_filename = "./../../GeoLiteCity.dat"


local geodb_city = geoip_city.open(geoip_city_filename)
local result, err = geodb_city:query_by_addr('xxx.xxx.xxx.xxx',"city","country_code")

print(result)
geodb_city:close()