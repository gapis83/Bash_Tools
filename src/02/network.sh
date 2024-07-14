#! /bin/bash
MASK=$(ip -br a show | sed "s/\//\ /g" | awk '/UP/{print $4}')
case $MASK in
1)
  echo "MASK = 128.0.0.0"
  ;;
2)
  echo "MASK = 192.0.0.0"
  ;;
3)
 echo "MASK = 224.0.0.0"
  ;;
4)
  echo "MASK = 240.0.0.0"
  ;;
5)
  echo "MASK = 248.0.0.0"
  ;;
6)
  echo "MASK = 252.0.0.0"
  ;;
7)
  echo "MASK = 254.0.0.0"
  ;;
8)
 echo "MASK = 255.0.0.0"
  ;;
9)
 echo "MASK = 255.128.0.0"
  ;;
10)
 echo "MASK = 255.192.0.0"
  ;;
11)
 echo "MASK = 255.224.0.0"
  ;;
12)
 echo "MASK = 255.240.0.0"
  ;;
13)
 echo "MASK = 255.248.0.0"
  ;;
14)
 echo "MASK = 255.252.0.0"
  ;;
15)
 echo "MASK = 255.254.0.0"
  ;;
16)
 echo "MASK = 255.255.0.0"
  ;;
17)
 echo "MASK = 255.255.128.0"
  ;;
18)
 echo "MASK = 255.255.192.0"
  ;;
19)
 echo "MASK = 255.255.224.0"
  ;;
20)
 echo "MASK = 255.255.240.0"
  ;;
21)
 echo "MASK = 255.255.248.0"
  ;;
22)
 echo "MASK = 255.255.252.0"
  ;;
23)
 echo "MASK = 255.255.254.0"
  ;;
24)
 echo "MASK = 255.255.255.0"
  ;;
25)
 echo "MASK = 255.255.255.128"
  ;;
26)
 echo "MASK = 255.255.255.192"
  ;;
27)
 echo "MASK = 255.255.255.224"
  ;;
28)
 echo "MASK = 255.255.255.240"
  ;;
29)
 echo "MASK = 255.255.255.248"
  ;;
30)
 echo "MASK = 255.255.255.252"
  ;;
31)
 echo "MASK = 255.255.255.254"
  ;;
32)
 echo "MASK = 255.255.255.255"
  ;;
esac
