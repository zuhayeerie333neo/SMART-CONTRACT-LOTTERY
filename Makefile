-include .env

# ==================================
# User Configuration (Replace These)
# ==================================

PRIVATE_KEY := YOUR_WALLET_PRIVATE_KEY
SEPOLIA_RPC_URL := YOUR_SEPOLIA_RPC_URL
ETHERSCAN_API_KEY := YOUR_ETHERSCAN_API_KEY

# ==================
# Necessary Commands
# ==================

build:
	forge build

deploy-sepolia-testnet-verify:
	forge script script/DeployRaffle.s.sol:DeployRaffle \
	--rpc-url $(SEPOLIA_RPC_URL) \
	--private-key $(PRIVATE_KEY) \
	--broadcast --verify \
	--etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

clean:
	forge clean