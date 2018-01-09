#!/bin/sh -x

QBIN=~/tmp/qtum-0.14.12/bin
TESTNET=-testnet
BINOBJ=TokenERC20.bin
COUT=info.testnet

$QBIN/qtum-cli $TESTNET createcontract `cat $BINOBJ` | tee $COUT

