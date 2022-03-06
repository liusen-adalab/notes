## Haruka
- [x] 网络架构
    - 单独运行一个 node server，作为 operator 和 prover 的中间层
    - prover 端运行一个服务器与 node server 交互
    - 鉴权，调整难度
- [x] 如何调整难度
    - 30 秒为间隔测量速度
    - 基础难度为 u64::MAX
    - 提交越快，难度值会越小
    - 越多人提交，难度值会越小
- [ ] 如何保存用户贡献
- [ ] 优化思路
- [ ] 每个 prover 每个块只能提交一次吗

## Aleo
- [ ] snarkos 整体结构
- [ ] posw 机制