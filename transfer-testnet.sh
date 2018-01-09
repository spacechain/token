#!/bin/sh -x

QBIN=~/tmp/qtum-0.14.12/bin
TESTNET=-testnet
ABI=TokenERC20.abi

CONTRACT=$1
QSRCADDR=$2
QDESTADDR=$3
AMOUNT=$4

if [ -z $AMOUNT ]
then
	echo params: contract src-address dest-address amount
	exit 1
fi

DEST_ACCT_HEX=`$QBIN/qtum-cli $TESTNET gethexaddress $QDESTADDR`

HEXCALL=`ethabi encode function $ABI transfer -p $DEST_ACCT_HEX $AMOUNT --lenient`

$QBIN/qtum-cli $TESTNET sendtocontract $CONTRACT $HEXCALL 0 250000 0.0000004 $QSRCADDR

