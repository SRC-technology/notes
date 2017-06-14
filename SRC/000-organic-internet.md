Organically Decentralized Internet

Links
- BitTorrent specs: http://www.bittorrent.org/beps/bep_0000.html
- IPFS whitepaper: https://raw.githubusercontent.com/ipfs/papers/master/ipfs-cap2pfs/ipfs-p2p-file-system.pdf
- Reference implementation of Bitswap in JS: https://github.com/ipfs/js-ipfs-bitswap
- TCP RFC: https://tools.ietf.org/html/rfc793

- https://raw.githubusercontent.com/ipfs/papers/master/ipfs-cap2pfs/ipfs-p2p-file-system.pdf
- https://github.com/ipfs/js-ipfs-bitswap

## Idris registry ideas

https://json-ld.org/

- JSON linked data (schema for an Idris AST in JSON linked data)
- Type signature is the resource identifier
- There are no "code documents", only functions in the graph
- Needs a tool to transform from Idris source code into the JSON linked data function documents
  - Condenser: Needs a tool to resolve the links in the linked data
  - (?) Needs a tool to go from the linked data graph into one or several Idris source code documents
- Parser from Idris to JSON linked data AST might be a backend for the Idris compiler. Could also be a separated parser
- Interpreter for the JSON linked data resources might compile to Idris source code or directly to binary/JavaScript/whatever. May generate intermediate representation in memory and feed it to Idris instead of going through source code.

### First step: same shit, but for LISP
