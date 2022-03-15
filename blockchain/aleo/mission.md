## Haruka
- [x] 网络架构
    - 单独运行一个 node server，作为一个假节点与 operator 连接，由 operator 与网络同步
    - server 从 operator 获取 block_template，分发给 prover
    - server 主要作用：鉴权，调整难度，记录 prover 贡献
- [x] 如何调整难度
    - 每个 prover 初始难度为 1，即目标为 u64::MAX
    - 提交越快，难度越高
    - 越多人提交，难度越高
    - n 设为 块难度的 5 倍
- [x] 如何保存用户贡献
    - 保存在 RockDB 中
    - 每挖到一个 uncofirm block 保存一次 PPLNS
- [ ] 优化思路
    - prover 的每个线程线单独设置 terminator
    - prover 线程池线程配置：线程数量、池子数量
    - tokio 异步
- [x] 每个 prover 每个块只能提交一次吗
    - prover 会一直计算并提交，直到收到新的任务

## Haruka Bug
- [ ] canonical error
- [x] pplns share is empty and it's weird
    - when a single prover's diffculty is greater than pool's it will lead to this issue. But it's no sense to fix it.
- [x] coredump
    - maybe rayon's bug
## Aleo
- [ ] snarkos 整体结构
- [ ] posw 机制

## Stratum
- Miners have the ability to choose their own work (i.e. choose their own transaction set)