#!/bin/bash

echo "========================================="
echo "  🐍 Starting MeoMunDep Python Bot..."
echo "========================================="

if command -v python3 &>/dev/null; then
  PYTHON=python3
elif command -v python &>/dev/null; then
  PYTHON=python
else
  echo "❌ Python is not installed. Please install it using your package manager (e.g., apt, brew)."
  exit 1
fi

echo "🔄 Upgrading pip..."
$PYTHON -m pip install --upgrade pip

if [ -f requirements.txt ]; then
  echo "📦 Installing packages from requirements.txt..."
  pip install -r requirements.txt
else
  echo "📦 Installing required packages..."
  pip install cloudscraper colorama
fi

echo "🚀 Running the bot..."
$PYTHON meomundep.py
