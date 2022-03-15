## Sync
- ledger (404)
```
wget https://transfer.sh/get/spvOq5/ledger-2.zip
unzip ledger-2.zip
cp -r ledger-2 $HOME/.aleo/storage
```

## Haruka Server API
- current_round: curl -XGET 'http://127.0.0.1:8080/current_round'
- pool_stats: curl -XGET 'http://127.0.0.1:8080/stats'
- prover_stat: curl -XGET 'http://127.0.0.1:8080/stats/aleo1j9tthvexfs2232247jc8wencgslsnydhyx3vvr7vv7mruqeptgpq4ektaj'
- admin current_round: curl -XGET 'http://127.0.0.1:8080/admin/current_round'
- admin all_block_mined: curl -XGET 'http://127.0.0.1:8080/admin/all_blocks_mined'

## Start Haruka pool
1.  
./snarkos --operator aleo1n23hkd9cvqjr2wrx8lcv98e3hgh0ksusj8ps5nlh0eyrpkrtqcxqhdhcqj --trial --verbosity 1

2. server
RUST_BACKTRACE=1 ./aleo-pool --api-port 8080 --operator 127.0.0.1:4132 --port 9090

3. prover
RUST_BACKTRACE=1 ./aleo-prover- -a aleo1j9tthvexfs2232247jc8wencgslsnydhyx3vvr7vv7mruqeptgpq4ektaj -p 127.0.0.1:9090

## Start official pool
```
PC1 (main node): ./snarkos --operator ${MINER_ADDRESS} --trial --verbosity $VERBOSITY --node $LOCAL_BIND_ADDR_PORT
PC2 (miners): ./snarkos --prover ${MINER_ADDRESS} --pool $OPERATOR_IP_PORT --trial --verbosity $VERBOSITY --node $LOCAL_BIND_ADDR_POR
```

-  Is that Ok to use the same aleo address for Operator and Prover? briefly: Ok
> https://discord.com/channels/700454073459015690/836382809035636737/928690015402356757
