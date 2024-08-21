# Network Interfaces Information

This document provides a list of the network interfaces on Device. For each network interface, the associated IP addresses and DNS eligibility status are listed. 

- **IP Address**: The IP address associated with the network interface. All the IP addresses listed are either private IP addresses or link-local addresses. These types of addresses are not routable over the internet. They are used for local network communication and can't be used to directly connect to your PC from the internet while exposing the zone from which the data is retrieved/sent.

- **Is DNS Eligible**: A boolean value indicating whether the network interface is configured to use DNS (Domain Name System) for resolving domain names into IP addresses. It doesn't provide any specific information that could be used to connect to your PC.

## Table of Contents

- [Network Interfaces Information](#network-interfaces-information)
  - [Table of Contents](#table-of-contents)
    - [ProtonVPN](#protonvpn)
    - [Ethernet 2](#ethernet-2)
    - [Ethernet](#ethernet)
    - [Local Area Connection\* 1](#local-area-connection-1)
    - [Local Area Connection\* 2](#local-area-connection-2)
    - [Wi-Fi](#wi-fi)
    - [Bluetooth Network Connection](#bluetooth-network-connection)
    - [Loopback Pseudo-Interface 1](#loopback-pseudo-interface-1)
    - [vEthernet (WSL (Hyper-V firewall))](#vethernet-wsl-hyper-v-firewall)

---

### ProtonVPN

ProtonVPN is a virtual private network (VPN) service provider operated by the Swiss company Proton Technologies AG.

- **IP Address**: 10.2.0.2
- **Is DNS Eligible**: true

---

### Ethernet 2

Ethernet 2 is a wired network interface. It might be used when there are multiple Ethernet ports on the device or when virtual network interfaces are created by software.

- **IP Address**: 169.254.123.29
- **Is DNS Eligible**: false

---

### Ethernet

Ethernet is a family of wired network technologies commonly used in local area networks (LAN), metropolitan area networks (MAN), and wide area networks (WAN).

- **IP Address**: 169.254.122.222
- **Is DNS Eligible**: false

---

### Local Area Connection* 1

Local Area Connection* 1 is typically a virtual network interface created by software.

- **IP Address**: 169.254.156.198
- **Is DNS Eligible**: false

---

### Local Area Connection* 2

Local Area Connection* 2 is typically a virtual network interface created by software.

- **IP Address**: 169.254.106.190
- **Is DNS Eligible**: false

---

### Wi-Fi

Wi-Fi is a wireless networking technology that uses radio waves to provide wireless high-speed Internet and network connections.

- **IP Address**: 192.168.100.5
- **Is DNS Eligible**: true

---

### Bluetooth Network Connection

Bluetooth Network Connection is used for creating small personal area networks (PANs).

- **IP Address**: 169.254.251.197
- **Is DNS Eligible**: false

---

### Loopback Pseudo-Interface 1

Loopback Pseudo-Interface 1 is a special network interface that your computer uses to communicate with itself. It is used mainly for diagnostics and troubleshooting.

- **IP Address**: ::1, 127.0.0.1
- **Is DNS Eligible**: false

---

### vEthernet (WSL (Hyper-V firewall))

vEthernet (WSL (Hyper-V firewall)) is a virtual network interface created by the Windows Subsystem for Linux (WSL). It's used for network communication between your Windows operating system and the Linux distributions running on WSL.

- **IP Address**: fe80::2992:ce6c:95fd:714b%47, 172.27.240.1
- **Is DNS Eligible**: false, true

---