# BakkesMod on Windows

This is a simple-ish setup for launching BakkesMod alongside Rocket League and then killing BakkesMod when you exit Rocket League.

## Disclaimer

I don't use Windows anymore and I have no idea if the script actually works correctly! I'm posting this with the hope that someone might find the information here useful.

## Setup

Download both [bootstrap.bat](./bootstrap.bat) and [bakkes.bat](./bakkes.bat). (You'll have to edit them and change filepaths depending on where you place them.)

In Steam go to `Library` and find Rocket League in the menu on the left. Right-click on it and select `Properties`. In the `General` tab you will see `Launch options` text field. Set that to `"C:\path\to\bootstrap.bat" & %command%` (you can put any other launch options before `%command%`)

Now whenever you launch Rocket League from Steam a BakkesMod will start alongside Rocket League. When you exit Rocket League simply wait until the process finishes and BakkesMod will close automatically.

## Why `bootstrap.bat`?

Steam can launch a batch file through `cmd.exe` but just running the launch script (`bakkes.bat`) will cause the launch process to stall and Rocket League won't start at all. I fixed this with a bootstrap batch script that just launches the actual launch script in a separate hidden terminal.

The result of this is a terminal window that will pop-up whenever you start Rocket League. (It should minimize itself instantly.)

## Alternatives

As far as I know there aren't many launch scripts for BakkesMod on Windows. [This is one of few that also does opening and closing](https://www.reddit.com/r/RocketLeague/comments/x1thh8/how_to_automatically_open_and_close_bakkesmod/). It utilizes Windows Task Scheduler but the setup seems a bit more complex.
