<div id="header" align="center">
  <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExY2NwMzNkNDltbjVmMGo0czRiMnVqbmllZmU1dHB4aXg5MHA2dzRtaCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/gHGKKgH0SfW9otLFrv/giphy.gif" width="200"/>
</div>

# T-SHARK BASH AUTOMATIC FILTERING FOR MULTIPLE PCAP FILE.


# Why?
You have probably often wondered how to improve the search for artifacts if you have many GB or TB of network data stored in a pcap file.


# What this script will be useful for?
  The script provided is useful for analyzing multiple PCAP (Packet Capture) files concurrently using `tshark`, which is a command-line network protocol analyzer. Here are some common use cases for this script:

1. **Security Analysis:** Security professionals often use PCAP files to analyze network traffic for signs of intrusion, malware, or suspicious activity. This script can help automate the analysis of multiple PCAP files, making it easier to identify potential security threats.

2. **Network Troubleshooting:** Network administrators can use this script to analyze PCAP files captured during network issues or incidents. It allows them to quickly extract relevant network statistics and identify the root cause of problems.

3. **Performance Monitoring:** Analyzing PCAP files can provide insights into network performance issues, such as latency, packet loss, or bandwidth utilization. This script can help network administrators monitor and troubleshoot network performance.

4. **Protocol Analysis:** Researchers and developers may use this script to study specific network protocols by analyzing PCAP files. They can extract protocol-specific statistics and examine how different devices communicate over the network.

5. **Forensic Investigations:** Digital forensics experts can use this script to analyze PCAP files as part of a forensic investigation. It helps in reconstructing network activity and understanding the sequence of events during an incident.

6. **Quality of Service (QoS) Analysis:** Organizations that prioritize certain types of network traffic (e.g., VoIP or video conferencing) can use this script to analyze PCAP files and ensure that QoS policies are being enforced correctly.

7. **Batch Processing:** If you have a large number of PCAP files to analyze, automating the process with this script can save a significant amount of time and effort.

Keep in mind that you'll need to customize the script by specifying the actual filter expressions, statistics, (line 14 of code) and PCAP file locations relevant to your specific use case. The script is configured so that the pcap files must be in the same directory as the script. Additionally, it's important to ensure that you have `tshark` installed and that you're analyzing PCAP files obtained legally and in compliance with any applicable laws and regulations.


# Screen from used it.
<img width="707" alt="Zrzut ekranu 2023-09-23 o 22 57 52" src="https://github.com/mar0ls/tshark_script/assets/120790937/456dd7dc-f7b1-4f13-9560-c7c2fcccdabc">
Output:
<img width="259" alt="Zrzut ekranu 2023-09-23 o 22 58 51" src="https://github.com/mar0ls/tshark_script/assets/120790937/09672461-2241-4929-8ceb-73f863dc3cfd">

   
# You can use option 2
In the second option, you enter the command yourself as in the screenshot below.
<img width="626" alt="Zrzut ekranu 2023-09-23 o 23 13 37" src="https://github.com/mar0ls/tshark_script/assets/120790937/13965094-3f4e-4ac7-8e8d-72e46b5ecf4c">

If you want to enable it, remove the hash from lines 7, 8, 13 of the code. Then insert the hash at the beginning of line 14 of the code

# Commands of tshark
**TShark**

          | `tshark -h` | Prints the help menu. 
          | `tshark -D` | List available interfaces to capture from. 
          | `tshark -i (int)` | Capture on a selected interface. Replace (int) with the interface name or number. 
          | `tshark -i eth0 -f "host (ip)"` | apply a filter with (-f) looking for a specific host while utilizing tshark 
          | `D` | Will display any interfaces available to capture from and then exit out.          
          | `L` | Will list the Link-layer mediums you can capture from and then exit out. (ethernet as an example)          
          | `i` | choose an interface to capture from. (-i eth0)         
          | `f` | packet filter in libpcap syntax. Used during capture.           
          | `c` | Grab a specific number of packets, then quit the program. Defines a stop condition.        
          | `a` | Defines an autostop condition. It can be after a duration, specific file size, or after a certain number of packets.            
          | `r (pcap-file)` | Read from a file.         
          | `W (pcap-file)` | Write into a file using the pcapng format.     
          | `P` | Will print the packet summary while writing into a file (-W)     
          | `x` | will add Hex and ASCII output into the capture.     
          | `h` | See the help menu     

Cheatsheet from X user @HackingArticle
![image](https://github.com/mar0ls/tshark_script/assets/120790937/6ba17e61-4d86-45f7-9989-ee649a093f94)

# **Common ports and protocols**
**Port Number	Description**
*	1	TCP Port Service Multiplexer (TCPMUX)
*	5	Remote Job Entry (RJE)
*	7	ECHO
*	18	Message Send Protocol (MSP)
*	20	FTP — Data
*	21	FTP — Control
*	22	SSH Remote Login Protocol
*	23	Telnet
*	25	Simple Mail Transfer Protocol (SMTP)
*	29	MSG ICP
*	37	Time
*	42	Host Name Server (Nameserv)
*	43	WhoIs
*	49	Login Host Protocol (Login)
*	53	Domain Name System (DNS)
*	69	Trivial File Transfer Protocol (TFTP)
*	70	Gopher Services
*	79	Finger
*	80	HTTP
*	103	X.400 Standard
*	108	SNA Gateway Access Server
*	109	POP2
*	110	POP3
*	115	Simple File Transfer Protocol (SFTP)
*	118	SQL Services
*	119	Newsgroup (NNTP)
*	137	NetBIOS Name Service
*	139	NetBIOS Datagram Service
*	143	Interim Mail Access Protocol (IMAP)
*	150	NetBIOS Session Service
*	156	SQL Server
*	161	SNMP
*	179	Border Gateway Protocol (BGP)
*	190	Gateway Access Control Protocol (GACP)
*	194	Internet Relay Chat (IRC)
*	197	Directory Location Service (DLS)
*	389	Lightweight Directory Access Protocol (LDAP)
*	396	Novell Netware over IP
*	443	HTTPS
*	444	Simple Network Paging Protocol (SNPP)
*	445	Microsoft-DS
*	458	Apple QuickTime
*	546	DHCP Client
*	547	DHCP Server
*	563	SNEWS
*	569	MSN
*	1080	Socks

•	Well-known ports range from 0 through 1023.
•	Registered ports are 1024 to 49151.
•	Dynamic ports (also called private ports) are 49152 to 65535.


# Nice work 👍 😊 

<div id="header" align="center">
  <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExYWZqNmtyZ3NlNnNueGs5NGkxeGVleHQ5aWV3OW8xbHVjdjExdW1xaSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/WgiZXpXNIzzYA/giphy.gif" width="300"/>
</div>


   



