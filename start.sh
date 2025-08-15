#!/bin/bash

java -Xms3000M -Xmx6500M \
     -XX:+UseG1GC \
     -XX:+UnlockExperimentalVMOptions \
     -XX:G1NewSizePercent=30 \
     -XX:G1MaxNewSizePercent=40 \
     -XX:G1HeapWastePercent=5 \
     -XX:G1ReservePercent=20 \
     -XX:G1HeapRegionSize=8M \
     -XX:G1MixedGCCountTarget=4 \
     -XX:G1MixedGCLiveThresholdPercent=90 \
     -XX:G1RSetUpdatingPauseTimePercent=5 \
     -XX:MaxGCPauseMillis=200 \
     -XX:InitiatingHeapOccupancyPercent=20 \
     -XX:SurvivorRatio=32 \
     -XX:+PerfDisableSharedMem \
     -XX:MaxTenuringThreshold=1 \
     -XX:+ParallelRefProcEnabled \
     -XX:+AlwaysPreTouch -XX:+DisableExplicitGC \
     -XX:+UseStringDeduplication \
     -jar fabric-server-mc.1.21.4-loader.0.17.2-launcher.1.1.0.jar nogui
