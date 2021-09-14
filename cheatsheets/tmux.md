# tmux Cheatsheet

## Fundamentals

### Keyboard Symbols Guide

| Keys         | Arrows        |
|--------------|---------------|
| ⌘ Command    | ↑ Up Arrow    |
| ⌥ Option/Alt | ↓ Down Arrow  |
| ⇧ Shift      | ← Left Arrow  |
| ⌃ Control    | → Right Arrow |

### The Bind Key

In `tmux`, the **bind key** is used as a prefix for many shortcuts. The default bind key is `⌃b` or `Control + b`. 

In my configuration, the following shortcut acts as the bind key:

| Shortcut | Description   | Mnemonics        |
|----------|---------------|------------------|
| ⌃s       | `Control + s` | set, setup, show |

### Sourcing the Configuration

You can reload tmux settings during the active session by sourcing the `.tmux.conf` file

| Shortcut | Description            | Mnemonic   |
|----------|------------------------|------------|
| ⌃s r     | `Control + s` then `r` | set reload |


### Displaying the `tmux` prompt

| Shortcut | Description            | Mnemonic    |
|----------|------------------------|-------------|
| ⌃s :     | `Control + s` then `:` | show prompt |

### Renaming the `tmux` Session

You can rename your `tmux` sesion using a keyboard shortcut:

| Shortcut | Description            | Mnemonic         |
|----------|------------------------|------------------|
| ⌃s $     | `Control + s` then `$` | set session name |

Or you can rename your `tmux` session using the `tmux` command prompt:

Use the keyboard combination `⌃s :` to display the prompt then enter `rename-session [-t current-name] [new-name]`

### View Session Browser

| Shortcut | Description               | Mnemonic             |
|----------|---------------------------|----------------------|
| ⌃s s     | `Option/Alt + s` then `s` | show session browser |

### View Window Browser

| Shortcut | Description               | Mnemonic            |
|----------|---------------------------|---------------------|
| ⌃s w     | `Option/Alt + s` then `w` | show window browser |

## Working with `tmux` Panes

### Create Panes

| Shortcut | Description               | Action                            |
|----------|---------------------------|-----------------------------------|
| ⌥  v     | `Option/Alt + Shift + \`  | Create a Vertical Pane            |
| ⌥  h     | `Option/Alt + -`          | Create a Horizontal Pane          |

### Close Pane

| Shortcut | Description               | Action                            |
|----------|---------------------------|-----------------------------------|
| ^ x     | `Option/Alt + x`          | Close the active pane             |

### Navigate Between Panes

| Shortcut | Description               | Action                            |
|----------|---------------------------|-----------------------------------|
| ←        | `Left`                    | Navigate to the pane on the left  |
| →        | `Right`                   | Navigate to the pane on the right |
| ↑        | `Up`                      | Navigate to the pane above        |
| ↓        | `Down`                    | Navigate to the pane below        |

### Resize Pane Width

| Shortcut | Description          | Action                            |
|----------|----------------------|-----------------------------------|
| ⌥  ←     | `Option/Alt + Left`  | Decrease width of pane by 5 rows  |
| ⇧ ←      | `Shift + Left`       | Decrease width of pane by 1 row   |
| ⌥  →     | `Option/Alt + Left`  | Increase width of pane by 5 rows  |
| ⇧ →      | `Shift + Right`      | Increase width of pane by 1 row   |

### Resize Pane Height

| Shortcut | Description         | Action                            |
|----------|---------------------|-----------------------------------|
| ⌥  ↑     | `Option/Alt + Up`   | Increase height of pane by 5 rows |
| ⇧ ↑      | `Shift + Up`        | Increase height of pane by 1 row  |
| ⌥  ↓     | `Option/Alt + Down` | Decrease height of pane by 5 rows |
| ⇧ ↓      | `Shift + Down`      | Decrease height of pane by 1 row  |

### Swap Panes

| Shortcut | Description               | Action                          |
|----------|---------------------------|---------------------------------|
| ⌃s }     | `Option/Alt + s` then `}` | Swap with the pane on the right |
| ⌃s {     | `Option/Alt + s` then `{` | Swap with the pane on the right |

### Toggle Zoom in/Zoom out on Current Pane

| Shortcut | Description         | Action                            |
|----------|---------------------|-----------------------------------|
| ⌥  f     | `Option/Alt + f`    | Zoom in or out on current pane    |

## Working with `tmux` Windows

### Create a New Window

| Shortcut | Description      | Action                        |
|----------|------------------|-------------------------------|
| ^ n      | `Option/Alt + n` | Create a new window           |

### Rename Window

| Shortcut | Description              | Action                   |
|----------|--------------------------|--------------------------|
| ⌥  r     | `Option/Alt r`           | Rename the active window |

### Navigate Between Windows

| Shortcut | Description      | Action                          |
|----------|------------------|---------------------------------|
| ^s >     | `Option/Alt + >` | Navigate to the next window     |
| ^s <     | `Option/Alt + <` | Navigate to the previous window |
| ^s 1     | `Option/Alt + 1` | Navigate to window number 1     |
| ^s 2     | `Option/Alt + 2` | Navigate to window number 2     |
| ^s 3     | `Option/Alt + 3` | Navigate to window number 3     |
| ^s 4     | `Option/Alt + 4` | Navigate to window number 4     |
| ^s 5     | `Option/Alt + 5` | Navigate to window number 5     |
| ^s 6     | `Option/Alt + 6` | Navigate to window number 6     |
| ^s 7     | `Option/Alt + 7` | Navigate to window number 7     |
| ^s 8     | `Option/Alt + 8` | Navigate to window number 8     |
| ^s 9     | `Option/Alt + 9` | Navigate to window number 9     |

### Delete Active Window

| Shortcut | Description              | Action                   |
|----------|--------------------------|--------------------------|
| ⌥  x    | `Option/Alt + Shift + x` | Delete the active window |

### Clear Active Window

| Shortcut | Description          | Action                                 |
|----------|----------------------|----------------------------------------|
| ⌃ l      | `Control + l`        | Clear active window and display prompt |
| ⌃s h     | `Option/Alt + s` `h` | Clear active window and hide prompt    |

### Swap Window Positions

* Display the `tmux prompt` using: `⌃s` : 
* Enter `swap-window -s 3 -t 1` to swap the position of windows 3 and 1
