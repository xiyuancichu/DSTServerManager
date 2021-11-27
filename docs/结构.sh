#!/usr/bin/env bash
set -eu
echo '请不要执行本脚本'
exit 1

$HOME
│
├──main-panel.sh            # <-- 需要上传的脚本
│
├──server-manage-scripts    # <-- 脚本仓库，包含各种配置文件模板
│   ├── scripts             # <-- 脚本
│   ├── templates           # <-- 配置文件模板
│   └── utils               # <-- 脚本
│
├── $DST_ROOT_DIR
│   ├── bin
│   │   └── dontstarve_dedicated_server_nullrenderer        # <-- 32位服务端
│   ├── bin64
│   │   └── dontstarve_dedicated_server_nullrenderer_x64    # <-- 64位服务端
│   └── mods
│       └── dedicated_server_mods_setup.lua             # <-- 在这边添加服务端mod
│
├── Steam
│   └── steamcmd.sh                                     # <-- 下载，更新饥荒用这个
│
└── $KLEI_ROOT_DIR
    ├── Agreements
    └── $WORLDS_DIR
        └── $CLUSTER_NAME
            ├── cluster.ini
            ├── cluster_token.txt
            ├── $DEFAULT_SHARD_MAIN
            │   ├── worldgenoverride.lua
            │   ├── modoverrides.lua
            │   └── server.ini
            └── $DEFAULT_SHARD_CAVE
                ├── worldgenoverride.lua
                ├── modoverrides.lua
                └── server.ini

# 以下为本脚本的默认设定

`/home/dst`
│
├── `server`
│   ├── bin
│   │   └── dontstarve_dedicated_server_nullrenderer
│   └── mods
│       └── dedicated_server_mods_setup.lua
│
├── Steam
│   └── steamcmd.sh
│
└── `keli`
    ├── Agreements
    └── `worlds`
        └── $CLUSTER_NAME   # <-- 由用户输入
            ├── cluster.ini
            ├── cluster_token.txt
            ├── `Main`
            │   ├── leveldataoverride.lua
            │   ├── modoverrides.lua
            │   └── server.ini
            └── `Cave`
                ├── leveldataoverride.lua
                ├── modoverrides.lua
                └── server.ini
