---
title: "Security+"
weight: 20
author: Ray Storer
tags:
  - IvyTech
  - security
  - comptia
  - certification
---

## Introduction

This will only include very brief notes from my studies leading up to taking the CompTia Security+ exam.

{{< notice "note" >}}
This course does not lead to CompTia certification and is not supported by CompTia. These are just my notes from studying for the exam.
{{< /notice >}}

## Risk Assessments

- Quantitative Risk Assessment
  - Asset Value (AV) -- what is the worth of the asset
  - Exposure Factor (EF) -- how much of the asset do we lose for a specific exposure
  - Single Loss Expectancy (SLE)
    - includes hard numbers to backup your assessment
    - Multiply the AV * EF
    - EF = 10%; AV = 25K; SLE = 0.1 * 25,000 = $2,500
    - 24hrs in a day. One day of business is worth $1M. An outage of 3 hours has an Exposure Factor = 3/24 = 12.5%
      - $1M * 12.5% = $125,000 for a single loss expectancy
  - Annual Rate of Occurrence (ARO)
    - Number of times you expect an SLE might occur in a year
      - ARO of 2 times per year = $125k SLE * 2 = $250K. So, we have up to $250K to spend on ways to thwart this risk.
- Qualitative Risk Assessment
  - can be subjective and without many hard numbers
  - Likelihood of it happening
  - Impact if it happens
  - Risk Register -- maintain a list of all the risks and the controls to mitigate the risk
| RiskNo |     Title    |   Likelihood   |     Impact     |    Severity    | Owner | Mitigation |
|:------:|:------------:|:--------------:|:--------------:|:--------------:|:-----:|:----------:|
|      1 | Some Title   | High, Med, Low | High, Med, Low | High, Med, Low | Dept1 | Mit 1      |
|      2 | Some Title 2 | High, Med, Low | High, Med, Low | High, Med, Low | Dept2 | Mit 2      |
|      3 | Some Title 3 | High, Med, Low | High, Med, Low | High, Med, Low | Dept3 | Mit 3      |
  - Risk heat map
    - ![heat map](/images/risk-heat-map.webp)
      - The numbers in parenthesis represent the risk level after mitigation

## Linux Commands

- fdisk -l
- sudo
- mkfs -t ext4 /dev/devname
- mount /dev/devname /folder
- touch
- dd if=/dev/urandom of=/dev/devname # wipe a drive
- umount
- ssh-keygen
- ssh-copy-id -i filename.pub uid\@hostname.domain.com
- cat

## Cryptography

- obfuscation
- rot13
- integrity
- hash
  - MD5 - 128 bit hash
  - SHA - SHA-1 - SHA-2
  - RIPEMD - 128 160
  - Attack the algorhythm, attack the implementation, attack the key

## Password Cracking

- Rainbow tables
- salting
- brute force
- unshadow /etc/passwd /etc/shadow > credentials.txt # jack the ripper

I ended up not finishing this content. Maybe some day I'll return to it.
