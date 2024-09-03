# csilk's auto macos setup

Got sick of doing this over and over, thought i'd automate it

## Running

```
mkdir ~/temp && cd ~/temp && curl -#L https://github.com/csi-lk/macos-setup/tarball/master | tar -xzv --strip-components 1 --exclude={README.md} && ./init.sh
```

## Keymap

I'm using BetterTouchTool to map keybindings + homerow for full keyboard support for UI items

### Spacebar shortcuts

| Key          | Action             |
| ------------ | ------------------ |
| CMD + Space  | Raycast            |
| Opt + Space  | Terminal (warp)    |
| Ctrl + Space | New Todo (Things3) |
| fn + Space   | Firefox            |

### Hyper keys

Hyperkey is CapsLock

| Key | Action                            |
| --- | --------------------------------- |
| a   | homerow                           |
| s   | homerow scroll                    |
| c   | calendar                          |
| r   | paprika                           |
| f   | firefox                           |
| v   | visual studio code                |
| p   | ask perplexity question (raycast) |
| m   | create masked email (raycast)     |
