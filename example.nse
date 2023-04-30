local nmap = require "nmap"
local socket = require "socket" description = "This is a sample NSE script" author = "" categories = {"default", "discovery", "safe"}
hostrule = function(host)
local timeout = 5
local s = socket.udp()
s:settimeout(timeout)
local result, err = s:sendto("", tostring(host), 1)
if err == "timeout" then
return false 
else
return true 
end
end
action = function(host)
print("Host ip: " ..host.ip.. " is Detected.")
end