#!/bin/bash

mv $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

# Define the path to the script you want to run
CLONE_SCRIPT="$HOME/dotfiles/clone_tpm.sh"

# Check if the script exists and is executable
if [ -x "$CLONE_SCRIPT" ]; then
    echo "Running $CLONE_SCRIPT..."
    "$CLONE_SCRIPT"
else
    echo "Script $CLONE_SCRIPT does not exist or is not executable."
    exit 1
fi

# Optional: Add any other commands you want to run after the clone script
echo "Finished running $CLONE_SCRIPT"
