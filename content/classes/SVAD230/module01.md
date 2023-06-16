---
title: "SVAD 230 - Module 1"
tags:
  - networking
  - ipv4
  - ipv6
  - virtual machine
  - dns
---

## Topics for Week One

- Cloud Networking
- DNS
- IPv4 and IPv6

## Cloud Networking

### Azure Virtual Networks

Assignment 1: [Introduction to Azure Virtual Networks](https://learn.microsoft.com/en-us/training/modules/introduction-to-azure-virtual-networks/)

Take a screen shot at the end to demonstrate you completed all the units, and submit it to Canvas.

## Domain Naming Service (DNS)

### What is DNS?

Read CloudFlare's [What is DNS? How DNS Works](https://www.cloudflare.com/learning/dns/what-is-dns/) article.

{{< tip >}}
CloudFlare has several other articles on the various DNS record types (under the *DNS Records* menu). Read them to learn more about each one.
{{< /tip >}}

### DNS Records

Read CloudFlare's [What is a DNS record?](https://www.cloudflare.com/learning/dns/what-is-dns/) article. Make sure you can explain A, CNAME, and TXT records and the time to live (TTL) attribute. MX, DKIM, SPF, AND DMARC record types deal primarily with email servers and services. For example, to find all the public facing email servers for Microsoft:

{{< tabgroup >}}
{{< tab name="Bash" >}}

```bash
dig microsoft.com mx

; <<>> DiG 9.16.1-Ubuntu <<>> microsoft.com mx
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 11159
;; flags: qr rd ad; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0
;; WARNING: recursion requested but not available

;; QUESTION SECTION:
;microsoft.com.                 IN      MX

;; ANSWER SECTION:
microsoft.com.          0       IN      MX      10 microsoft-com.mail.protection.outlook.com.

;; Query time: 20 msec
;; SERVER: x.x.x.x#53(x.x.x.x)
;; WHEN: Thu Jun 15 21:54:57 EDT 2023
;; MSG SIZE  rcvd: 101
```

{{< /tab >}}
{{< tab name="CMD" >}}

```cmd
nslookup -type=mx microsoft.com
Server: your-server-host-name
Address: x.x.x.x

Non-authoritative answer:
microsoft.com   MX preference = 10, mail exchanger = microsoft-com.mail.protection.outlook.com
```

{{< /tab >}}
{{< /tabgroup >}}

### DNS Zones

Read CloudFlare's [What is a DNS zone?](https://www.cloudflare.com/learning/dns/glossary/dns-zone/) article. Can you explain a DNS zone? Did you notice the link about [reverse lookup zones](https://www.cloudflare.com/learning/dns/glossary/reverse-dns/)? How do reverse lookup zones differ from primary (and other) zones? Read Microsoft's article on [DNS zones](https://learn.microsoft.com/en-us/windows-server/networking/dns/zone-types). Make sure you understand the purpose for each zone type. Zone transfers allow another server to host a copy of the DNS zone you transferred. Zone delegation allows you to break up management of your zones into logical administrative units--ideally, it lessens the DNS admin burden on administrators.

## IPv4 and IPv6

### IPv4

Read Wikipedia's [Internet Protocol version 4](https://en.wikipedia.org/wiki/Internet_Protocol_version_4) article. Specifically, make sure you understand the "special-use addresses."
{{< notice "question" >}}
No, we will not cover IP subnetting here. Feel free to research it on your own. (Or, check out the video below)
{{< /notice >}}
{{< liteyoutube "4kMGs9-HDEk" >}}

### IPv6

Read Microsoft's [Internet Protocol version 6 (IPv6) overview](https://learn.microsoft.com/en-us/dotnet/fundamentals/networking/ipv6-overview) article. Make certain you understand the concepts of Unicast, link local, site local, multicast, and anycast addresses.
