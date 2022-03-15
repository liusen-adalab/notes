## Sync
- ledger
```
wget https://transfer.sh/get/spvOq5/ledger-2.zip
unzip ledger-2.zip
cp -r ledger-2 $HOME/.aleo/storage
```

## Server API
- current_round: curl -XGET 'http://127.0.0.1:8080/current_round'
- pool_stats: curl -XGET 'http://127.0.0.1:8080/stats'
- prover_stat: curl -XGET 'http://127.0.0.1:8080/stats/aleo1j9tthvexfs2232247jc8wencgslsnydhyx3vvr7vv7mruqeptgpq4ektaj'
- admin current_round: curl -XGET 'http://127.0.0.1:8080/admin/current_round'
- admin all_block_mined: curl -XGET 'http://127.0.0.1:8080/admin/all_blocks_mined'

## Start up 
1.  
./snarkos --operator aleo1n23hkd9cvqjr2wrx8lcv98e3hgh0ksusj8ps5nlh0eyrpkrtqcxqhdhcqj --trial --verbosity 1

2. server
RUST_BACKTRACE=1 ./aleo-pool --api-port 8080 --operator 127.0.0.1:4132 --port 9090

3. prover
RUST_BACKTRACE=1 ./aleo-prover- -a aleo1j9tthvexfs2232247jc8wencgslsnydhyx3vvr7vv7mruqeptgpq4ektaj -p 127.0.0.1:9090


127.0.0.1:33744 "GET /admin/all_blocks_mined HTTP/1.1" 500 "-" "curl/7.68.0" 9.168295ms 