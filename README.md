# build_env_more_part3

Android 14 离线构建环境扩展包 - 第三部分：Android SDK 多平台

## 说明

本仓库包含 Android SDK 的额外平台和构建工具版本，拆分为 6 个分片（aa-af），每个小于 100MB。

## 文件列表

| 文件 | 大小 | 说明 |
|---|---|---|
| part3-content.tar.gz.aa | 95MB | 分片 01/6 |
| part3-content.tar.gz.ab | 95MB | 分片 02/6 |
| part3-content.tar.gz.ac | 95MB | 分片 03/6 |
| part3-content.tar.gz.ad | 95MB | 分片 04/6 |
| part3-content.tar.gz.ae | 95MB | 分片 05/6 |
| part3-content.tar.gz.af | 28MB | 分片 06/6 |

## 包含内容

### Android SDK 平台
| 目录 | 大小 | 用途 |
|---|---|---|
| platforms/android-33 | 141MB | API 33 (Android 13)，兼容旧项目 |
| platforms/android-35 | 142MB | API 35 (Android 15)，适配新版本 |

### Android Build Tools
| 目录 | 大小 | 用途 |
|---|---|---|
| build-tools/33.0.0 | 139MB | 与 API 33 配套 |
| build-tools/35.0.0 | 147MB | 与 API 35 配套 |

## 还原方法

```bash
# 1. 克隆仓库
git clone https://github.com/kingopenr010077/build_env_more_part3.git
cd build_env_more_part3

# 2. 合并分片
cat part3-content.tar.gz.* > part3.tar.gz

# 3. 解压
tar xzf part3.tar.gz

# 4. 复制到 Android SDK 目录
cd part3-content
# 复制平台
cp -r platforms/android-33 platforms/android-35 $ANDROID_HOME/platforms/
# 复制构建工具
cp -r build-tools/33.0.0 build-tools/35.0.0 $ANDROID_HOME/build-tools/
```

## 相关仓库

- [build_env_more-part1](https://github.com/kingopenr010077/build_env_more-part1) — Gradle 多版本分发包
- [build_env_more_part2](https://github.com/kingopenr010077/build_env_more_part2) — KGP/AGP 多版本 + 公共 Maven 依赖