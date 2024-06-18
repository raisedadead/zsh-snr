#!/usr/bin/env zsh
# snr.plugin.zsh

# Ensure necessary commands are installed
for cmd in fzf awk xargs; do
  if ! command -v $cmd &>/dev/null; then
    echo "$cmd is not installed. Install it with your package manager."
    return
  fi
done

function snr() {
  local command1="$1"
  local command2="$2"
  local result selected_items

  # Run the first command and select multiple items using fzf
  result=$(eval "$command1" | tail -n +1 | fzf --multi)

  # Extract the first field from each selected item
  selected_items=$(echo "$result" | awk '{print $1}')

  if [ -z "$selected_items" ]; then
    echo "No items selected."
    return
  fi

  # Run the second command for each selected item
  echo "$selected_items" | while read -r item; do
    echo ""
    (
      eval "$command2 $item"
    )
  done
}

# Example usage
# snr "gh pr list" "gh pr checkout"
