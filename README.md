# UDP-Forwarder-Script---Power-Shell
PowerShell script for forwarding UDP packets from a local port to a remote host, addressing the limitations of netsh in handling UDP traffic.

This PowerShell script is designed to forward UDP packets from one port to another. It listens on a specified local port and forwards incoming UDP packets to a remote host and port. The script is useful in situations where you need to redirect UDP traffic to a different server or port.

Reason for Creation

This script was created to address a limitation of the netsh tool, which does not natively support UDP traffic forwarding. In scenarios where UDP packets need to be forwarded and netsh falls short, this PowerShell script provides the required functionality.

Parameters

	•	$localPort: The local port on which the script listens (default is 162).
	•	$remoteHost: The IP address of the remote host to which the UDP packets will be forwarded (default is 127.0.0.1).
	•	$remotePort: The remote port to which the UDP packets will be forwarded (default is 162).

Usage

	1.	Modify the values of $localPort, $remoteHost, and $remotePort to suit your needs.
	2.	Run the script in a PowerShell environment.
	3.	The script will start listening on the specified local port and will forward all received UDP packets to the specified remote host and port.

Output

The script outputs information to the console about the received and forwarded UDP packets in hexadecimal format. If an error occurs, it will display the corresponding error message.

Use Cases

This script can be used for:

	•	Forwarding SNMP traps from one server to another.
	•	Redirecting UDP traffic for testing purposes.
	•	Overcoming limitations in network infrastructure.

License

This project is available under the [chosen license]. If desired, include a link to the specific license here.

This description now includes the reason for the script’s creation, providing context for its use and importance.
