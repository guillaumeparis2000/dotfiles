# Tmux

[Tmux](https://tmux.github.io/)

Tmux is a terminal multiplexer like screen. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal. And do a lot more

Some Tmux commands based on [my current configuration](https://github.com/guillaumeparis2000/dotfiles/blob/master/tmux/tmux.conf):

## Shell commands:
  * __tmux new -s <session name>:__ Create a new tmux session called `<session name>`
  * __tmux attach:__ Attach to the previous session
  * __tmux ls:__ List all tmux session
  * __tmux attach -t <session name>:__ Attach to a specific session

## Tmux commands:
  * __Ctrl + a ?:__ Commands Help
  * __Ctrl + a c:__ Create a new Window
  * __Ctrl + a n:__ Go to next Window
  * __Ctrl + a p:__ Go to previous Window
  * __Ctrl + a d:__ Detach the current Tmux session
  * __Ctrl + a $:__ Rename a session
  * __Ctrl + a s:__ List active sessions
  * __Ctrl + a |:__ Create a vertical pane split
  * __Ctrl + a -:__ Create an horizontal pane split
  * __Ctrl + a w:__ List created sessions
  * __Ctrl + a z:__ Zoom/Unzoom the active pane
  * __Ctrl + a : resize-pane -d:__ Down pane resize
  * __Ctrl + a : resize-pane -u:__ Up pane resize
  * __Ctrl + a : resize-pane -r:__ Right pane resize
  * __Ctrl + a : resize-pane -l:__ Left pane resize
  * __Ctrl + a m:__ Enable/Disable mouse mode
