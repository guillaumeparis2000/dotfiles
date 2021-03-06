# Tmux

[Tmux](https://tmux.github.io/)

Tmux is a terminal multiplexer like screen. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal. And do a lot more

Some Tmux commands based on [my current configuration](tmux.conf):

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

## Share session betweeen various users:
For different users, you have to set the permissions on the tmux socket so that both users can read and write it. There is only one prerequiste, that there be a group in common between the two users. If such a group does not exist it will be necessary to create one.

In the first terminal, start tmux where `shared` is the session name and `shareds` is the name of the socket:
```sh
tmux -S /tmp/shareds new -s shared
```

Then `chgrp` the socket to a group that both users share in common. In this example, `tmux` is the group that both users share. If there are other users in the group, then they also have access. So it might be recommended that the group have only the two members.
```sh
chgrp tmux /tmp/shareds
```

In the second terminal attach using that socket and session.
```sh
tmux -S /tmp/shareds attach -t shared
```

For more tips on sharing session with tmux, [see](https://www.howtoforge.com/sharing-terminal-sessions-with-tmux-and-screen#sharing-between-two-different-accounts-with-tmux)
