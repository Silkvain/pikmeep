#!/bin/bash
# pikmeep installer

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="pikmeep"

echo ""
echo "  Installing pikmeep..."
echo ""


if ! command -v fzf &>/dev/null; then
  echo "  fzf not found. Installing via pikman..."
  pikman install fzf
fi


if [ -f "./$SCRIPT_NAME" ]; then

  sudo cp "./$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"
else

  sudo curl -fsSL \
    "https://raw.githubusercontent.com/Silkvain/pikmeep/main/pikmeep" \
    -o "$INSTALL_DIR/$SCRIPT_NAME"
fi

sudo chmod 755 "$INSTALL_DIR/$SCRIPT_NAME"

echo "  ✓ pikmeep installed to $INSTALL_DIR/$SCRIPT_NAME"
echo ""
echo "  Run it with: pikmeep"
echo ""
