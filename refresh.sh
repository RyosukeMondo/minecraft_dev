#!/bin/bash

# Gradleキャッシュをクリア
rm -rf ~/.gradle/caches/

# 再度ビルドを実行
./gradlew build

# ビルドが成功したかどうかを確認
if [ $? -eq 0 ]; then
  echo "ビルド成功！"
else
  echo "ビルド失敗。他の解決方法を試してください。" 
fi
