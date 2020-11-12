# This script is for troubleshooting TCP connections. Quickly check if a firewall blocks a port for example.
# It functions as very basic server. When it´s run, it opens a TCP port and listens on it. 
# As soon as a connection is made, it gives back a short message, closes the connection and stops listening.
# Easiest way from the client ist to use telnet
# > telnet 127.0.0.1 1234

$bindaddress = [ipaddress]::any # Bind Address, in this case listens to all IPs on the system. You can specify a address that should be listened on like "127.0.0.1"
$port = "1234" # Port on which should be listened

$Listener = New-Object System.Net.Sockets.TcpListener -ArgumentList $bindaddress,$port  # Create a listener with the defined parameters
$Listener.Start(); # start it

$session = $Listener.AcceptTcpClient(); # accept a TCP session
$stream = $session.GetStream(); # connect to the data stream

$Data = [text.Encoding]::Ascii.GetBytes('Hey there, yes it works!')   # prepare message
$stream.Write($Data,0,$Data.length) # sent message

$session.Close(); # close the session
$Listener.Stop(); # stop the listener
