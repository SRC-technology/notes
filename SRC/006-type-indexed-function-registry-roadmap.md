1. OCaml backend (or middleware) that
    - Takes the IR
    - Converts to a set of functions with dependencies and type signature
    - Publishes the functions indexed by type signature + name (or whatever we have) (ideally in some Merkle DAG such as IPFS / MerkleGraph / neo4j, retrieval / search should be easy)
2. Command line tool / library for querying the registry
    - Interface to communicate with the registry server
    - Extend Merlin to make the functions from the registry available
