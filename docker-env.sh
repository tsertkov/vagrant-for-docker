#!/usr/bin/env bash

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

get_ip () {
  iface=$1
  vagrant ssh -- "$(cat <<-EOT
    ip -family inet addr show ${iface} | \
      sed -n 's/^\s\+inet \(\S\+\)\/.*/\1/p1'
EOT
  )"
}

cat <<EOT
tcp://$(get_ip eth1):2375
EOT
