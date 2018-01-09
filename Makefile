
OUTPUTS		= TokenERC20.abi TokenERC20.bin \
		tokenRecipient.abi tokenRecipient.bin
all:		$(OUTPUTS)

SOLC_FLAGS	= --optimize --gas

TokenERC20.abi: token.sol
	solc --overwrite -o . --abi token.sol

TokenERC20.bin: token.sol
	solc $(SOLC_FLAGS) --overwrite -o . --bin token.sol

tokenRecipient.abi: token.sol
	solc --overwrite -o . --abi token.sol

tokenRecipient.bin: token.sol
	solc $(SOLC_FLAGS) --overwrite -o . --bin token.sol

clean:
	rm -f $(OUTPUTS)

