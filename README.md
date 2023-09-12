# lazy-waffle

**This script only works on MacOS**

## Install and usage notes:

```
git clone https://github.com/skilfoy/lazy-waffle
cd lazy-waffle
chmod +x move.sh
./move.sh 222
```

The above usage command will move the mouse cursor to a random point on the screen every 222 seconds. Adjust the time as necessary.

The script will attempt to use `brew` to install the library requirement if not already installed: `cliclick`. Alternatively, you can use `brew install cliclick` or clone and build the [source repo](https://github.com/BlueM/cliclick) prior to execution to install `cliclick`. The script will not, however, [install Homebrew](https://brew.sh/), if your Mac doesn't yet have it, so make sure to have that first.
