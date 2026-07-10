# HeatLens 0.1.8

Performance-focused release to reduce stutter and 1% low FPS drops while gaming.

## What's new in 0.1.8

- **Options → Performance**: sensor refresh interval (1–10 seconds) and **Low impact mode**
- Default refresh is now **3 seconds** instead of 1.5 seconds
- Throttled UI/graph redraws and less frequent detail table rebuilds
- Skips redundant WMI/psutil scans when LibreHardwareMonitor HTTP is active
- Faster, cached LibreHardwareMonitor HTTP reads

## Tip for gaming

Enable **Low impact mode** in Options, or set sensor refresh to **5–10 seconds**.

## Downloads

| Platform | File |
|----------|------|
| Windows | `HeatLens.exe` |
| Linux | `HeatLens` or `HeatLens-linux-x86_64.tar.gz` |
| macOS | `HeatLens-macos-arm64.tar.gz` |
