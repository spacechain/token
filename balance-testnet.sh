#!/bin/sh -x

QBIN=~/tmp/qtum-0.14.12/bin
TESTNET=-testnet
ABI=TokenERC20.abi

CONTRACT=$1
QADDR=$2

ACCT_HEX=`$QBIN/qtum-cli $TESTNET gethexaddress $QADDR`

HEXCALL=`ethabi encode function $ABI balanceOf -p $ACCT_HEX`

$QBIN/qtum-cli $TESTNET callcontract $CONTRACT $HEXCALL

