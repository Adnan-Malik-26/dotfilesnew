#Prefix Settings
unbind  C-b
set-option -g prefix C-a
bind-key C-a send-prefix


# split panes using | and -
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %

#Reload file
bind r source-file ~/.config/tmux/tmux.conf

# colors
set-option -sa terminal-features ',xterm-256color:RGB'

set -g base-index 1          # start indexing windows at 1 instead of 0
set -g history-limit 1000000 # increase history size (from 2,000)
set -g renumber-windows on   # renumber all windows when any window is closed
set -g set-clipboard on      # use system clipboard
set -g status-interval 3     # update the status bar every 3 seconds

set -g status-left "#[fg=blue,bold]#S "
set -g status-left-length 200    # increase length (from 10)
set -g status-right-length 200   # increase length (from 10)
set -g status-position top       # macOS / darwin style
set -g status-style 'bg=default' # transparent

