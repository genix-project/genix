#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.genixcore/genixd.pid file instead
genix_pid=$(<~/.genixcore/testnet3/genixd.pid)
sudo gdb -batch -ex "source debug.gdb" genixd ${genix_pid}
