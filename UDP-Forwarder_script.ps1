$localPort = 162 # Listening port
$remoteHost = "127.0.0.1"  # Destination IP address
$remotePort = 162  # Forwarding port

$endpoint = New-Object System.Net.IPEndPoint([IPAddress]::Any, $localPort)
$udpClient = New-Object System.Net.Sockets.UdpClient $localPort

$forwardClient = New-Object System.Net.Sockets.UdpClient

Write-Host "UDP forwarder started. Listening on port $localPort and forwarding to $remoteHost port $remotePort"

while ($true) {
    try {
        $content = $udpClient.Receive([ref]$endpoint)
        $forwardClient.Send($content, $content.Length, $remoteHost, $remotePort)
        
        $hexString = [BitConverter]::ToString($content)
        Write-Host "Received and forwarded packet: $hexString"
    }
    catch [System.Net.Sockets.SocketException] {
        Write-Host "Socket exception occurred: $($_.Exception.Message)"
    }
    catch {
        Write-Host "An error occurred: $($_.Exception.Message)"
    }
}