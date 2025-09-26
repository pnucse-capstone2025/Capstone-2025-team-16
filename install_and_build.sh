#!/bin/bash
# install_and_build.sh
# RouteX Capstone Project - Build & Setup Script

set -e

echo "=== RouteX: Road Condition Analysis ==="
echo "Step 1) Checking Android SDK & Gradle..."
./gradlew --version || echo "Gradle wrapper not found!"

echo "Step 2) Installing Git LFS (for large files like ML models, PDFs, videos)..."
git lfs install

echo "Step 3) Syncing submodules (if any)..."
git submodule update --init --recursive

echo "========================================"
echo "Setup complete."
echo "Next steps:"
echo " - Open src/RouteX_android in Android Studio"
echo " - Place google-services.json into app/ (for Firebase)"
echo " - Build & run on device (min SDK 24+)"
echo "========================================"
