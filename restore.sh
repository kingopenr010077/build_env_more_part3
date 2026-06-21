#!/bin/bash
set -e
echo "=== build_env_more_part3 还原脚本 ==="
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "合并分片中..."
cat part3-content.tar.gz.* > part3.tar.gz

echo "解压中..."
tar xzf part3.tar.gz

echo ""
echo "=== 完成 ==="
echo "解压后内容位于: $SCRIPT_DIR/part3-content/"
echo ""
echo "复制平台:"
echo "  cp -r part3-content/platforms/android-33 \$ANDROID_HOME/platforms/"
echo "  cp -r part3-content/platforms/android-35 \$ANDROID_HOME/platforms/"
echo "复制构建工具:"
echo "  cp -r part3-content/build-tools/33.0.0 \$ANDROID_HOME/build-tools/"
echo "  cp -r part3-content/build-tools/35.0.0 \$ANDROID_HOME/build-tools/"