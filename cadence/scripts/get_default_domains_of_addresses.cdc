import DomainUtils from "../contracts/DomainUtils.cdc"

// flow scripts execute ./scripts/get_default_domains_of_addresses.cdc --args-json='[{"type": "Array", "value": [{"type": "Address", "value": "0x257c27ba4951541d"}]}]' -n=testnet 
pub fun main(addresses: [Address]): {Address: {String: String}} {
    return DomainUtils.getDefaultDomainsOfAddresses(addresses)
}