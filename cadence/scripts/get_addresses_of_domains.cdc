import DomainUtils from "../contracts/DomainUtils.cdc"

// flow scripts execute ./scripts/get_addresses_of_domains.cdc --args-json='[{"type": "Array", "value": [{"type": "String", "value": "lanford33"}]}, {"type": "Array", "value": [{"type": "String", "value": "fn"}]}]' -n=testnet 
pub fun main(names: [String], roots: [String]): {String: Address} {
    return DomainUtils.getAddressesOfDomains(names: names, roots: roots)
}