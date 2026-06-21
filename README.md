# build_env_more_part3

Android 14 离线构建环境扩展包 - 第三部分（备用）

## 说明

本仓库为备用仓库，用于未来补充 Android 离线构建环境所需的其他依赖。

### 可能的补充内容

| 类别 | 说明 | 预计大小 |
|---|---|---|
| Compose BOM 全家桶 | Jetpack Compose 完整依赖树 | ~500MB |
| AGP 8.x 剩余版本的完整传递依赖 | 8.1/8.3/8.4/8.5 的完整依赖树（当前仅核心构件） | ~3GB |
| Gradle 6.x/7.x 旧版本 | 兼容某些老旧项目 | ~300MB |
| Flutter 依赖（如需要） | Dart/Flutter SDK 及 Android 引擎 | ~1GB |

### 命名约定

如果未来需要拆分更多内容到本仓库，建议按以下格式组织：

```
part3-content.tar.gz.aa   ← 95MB 分片
part3-content.tar.gz.ab   ← 95MB 分片
...
restore.sh                ← 还原脚本
README.md                 ← 使用说明
```

### 相关仓库

- [build_env_more-part1](https://github.com/kingopenr010077/build_env_more-part1) — Gradle 多版本 + SDK 多平台
- [build_env_more_part2](https://github.com/kingopenr010077/build_env_more_part2) — KGP/AGP 多版本 + 公共 Maven 依赖
- [build_env_android-part1](https://github.com/kingopenr010077/build_env_android-part1) — 方案A（基础环境）第一部分
- [build_env_android_part2](https://github.com/kingopenr010077/build_env_android_part2) — 方案A（基础环境）第二部分
- [build_env_ndk_part](https://github.com/kingopenr010077/build_env_ndk_part) — NDK 分片包
- [build_env_base](https://github.com/kingopenr010077/build_env_base) — 方案A LFS 版（SDK + Gradle 缓存）
- [build_env_add1](https://github.com/kingopenr010077/build_env_add1) — 方案A LFS 补充（JDK + Gradle + Maven 仓库）
- [build_env_ndk](https://github.com/kingopenr010077/build_env_ndk) — NDK LFS 版
