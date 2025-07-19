# run
```bash
# 下载内核并打补丁
prepare_kernels.sh 6.12 # 不加参数默认编译所有支持的内核
# 编译内核
build_kernels.sh
# 打包内核和模块
package_kernels.sh
```
