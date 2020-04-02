### Docker里启动异构的OpenWRT

1. 创建**root**目录 `mkdir root`

2. 将OpenWRT的rootfs解压到 **root**

3. 执行
    ```
    ./build.sh
    ./start.sh
    ```

Tested on: 
* Docker version 19.03.8, build afacb8b
* OpenWRT 18.06.8