This repo has two features for Unity and Godot that you can add to your `devcontainer.json` file. Both of these require you to also add the desktop-lite feature.

# Unity feature

This feature installs Unity Hub in your codespace. You can add the feature to your codespace by adding the feature to your `devcontainer.json` file.

```json
"features": {
    "ghcr.io/LordArugula/codespace-features/unityhub:0": {}
}
```

To actually run Unity Hub in a codespace, you will want to add the desktop-lite feature too.

```json
"features": {
    "ghcr.io/devcontainers/features/desktop-lite:1": {},
    "ghcr.io/LordArugula/codespace-features/unityhub:0": {}
}
```

## Installing the Unity Editor
This feature does not install the Unity Editor. You can install the Unity Editor after creating the codespace by  either opening Unity Hub and installing the desired version or through the command line.

### Using the command line

We can install the Unity Editor with the `install` command and setting the `--version` option. In the example, we are installing version `6000.0.35f1`.

```sh
/opt/unityhub/unityhub --no-sandbox --headless install --version 6000.0.35f1
```

Optionally, we can add the desired modules using `--module` option.

```sh
/opt/unityhub/unityhub --no-sandbox --headless install --version 6000.0.35f1 --module android language-zh-cn
```

### Using Unity Hub
To use Unity Hub, we need to connect to a virtual desktop using VNC. By default, this will at port `6080` on your codespace. You can find this port in the `PORTS` tab.

Next, open UnityHub.

```sh
/opt/unityhub/unityhub --no-sandbox
```

Then, we have to login and activate a Unity license. Unity Hub should open a browser tab to login. Once you've logged in to your Unity account, you will get a link to open Unity Hub. This link may not open Unity Hub correctly, so you will have to copy the link and open Unity Hub through the command line using the link. The virtual desktop clipboard may not be shared with your computer's clipboard. To access the clipboard, go to the clipboard button on the left panel.

Open Unity Hub with the link you copied. The link should look like: `unityhub://login?code=...`

```sh
/opt/unityhub/unityhub --no-sandbox <UNITYHUB-LINK>
```

# Godot feature

This feature installs Godot in your codespace. You can add the feature to your codespace by adding the feature to your `devcontainer.json` file.

```json
"features": {
    "ghcr.io/LordArugula/codespace-features/godot:0": {}
}
```

You will also want to add the desktop-lite feature so you can actually use it in the browser.

```json
"features": {
    "ghcr.io/devcontainers/features/desktop-lite:1": {},
    "ghcr.io/LordArugula/codespace-features/godot:0": {}
}
```

# Limitations

The desktop-lite feature that is used does not support audio. You may also experience graphical issues.
