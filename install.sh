#!/bin/zsh

# Set the executable permission for the scripts
chmod +x ~/Tools/Custom/Bash/info/eh.sh
chmod +x ~/Tools/Custom/Bash/info/ep.sh
chmod +x ~/Tools/Custom/Bash/info/idocker0.sh
chmod +x ~/Tools/Custom/Bash/info/iens3.sh
chmod +x ~/Tools/Custom/Bash/info/ieth0.sh
chmod +x ~/Tools/Custom/Bash/info/ilo.sh
chmod +x ~/Tools/Custom/Bash/info/itun0.sh
chmod +x ~/Tools/Custom/Bash/info/iwlan0.sh


# Update .zshrc with alias
alias_lines=(
  "alias eh='~/Tools/Custom/Bash/info/eh.sh'"
  "alias ep='~/Tools/Custom/Bash/info/ep.sh'"
  "alias idocker0='~/Tools/Custom/Bash/info/idocker0.sh'"
  "alias iens3='~/Tools/Custom/Bash/info/iens3.sh'"
  "alias ieth0='~/Tools/Custom/Bash/info/ieth0.sh'"
  "alias ilo='~/Tools/Custom/Bash/info/ilo.sh'"
  "alias itun0='~/Tools/Custom/Bash/info/itun0.sh'"
  "alias iwlan0='~/Tools/Custom/Bash/info/iwlan0.sh'"
)

# To ensure the last line of ~/.zshrc is empty
ensure_last_line_empty() {
  if [ -n "$(tail -n 1 ~/.zshrc)" ]; then
    echo "" >> ~/.zshrc
  fi
}

ensure_last_line_empty

# Iterate over each alias line and check if it exists in ~/.zshrc
for alias_line in "${alias_lines[@]}"; do
  if ! grep -q "^$alias_line" ~/.zshrc; then
    # If not, append the alias line to ~/.zshrc
    echo "$alias_line" >> ~/.zshrc
    # echo "Alias added to ~/.zshrc: $alias_line"
  # else
    # echo "Alias already exists in ~/.zshrc: $alias_line"
  fi
done

# Source the updated .zshrc
source ~/.zshrc
