#!/bin/sh -x

QBIN=~/tmp/qtum-0.14.12/bin
TESTNET=
BINOBJ=TokenERC20.bin
COUT=info.mainnet

$QBIN/qtum-cli $TESTNET createcontract `cat $BINOBJ` | tee $COUT

