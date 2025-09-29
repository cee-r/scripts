#!/bin/bash

# Check if modules are installed

modules=(
  module_one
  module_two
)

for module in "${modules[@]}"; do
  if drush pm:status "$module" 2>/dev/null | grep -q "Enabled"; then
    echo "✅ $module is ENABLED"
  else
    echo "❌ $module is DISABLED"
  fi
done


# Make it executable chmod +x check-module-status.sh
# Run drush-all scr ./check-modules.sh
