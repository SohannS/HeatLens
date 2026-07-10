# Optional Windows code signing for HeatLens.exe

HeatLens is open source. The portable `.exe` is **not code-signed** unless you add a certificate.
Windows SmartScreen often shows **"Windows protected your PC"** for unsigned apps downloaded from the internet. That is normal for indie software — it is not necessarily a virus warning.

## For users (right now)

1. Click **More info**
2. Click **Run anyway**

Or run from source instead:

```powershell
git clone https://github.com/arogorn993-hue/HeatLens.git
cd HeatLens
py -3 -m pip install -r requirements.txt
.\run_heatlens.ps1
```

## Build reputation (free, slow)

After each release, submit `HeatLens.exe` to Microsoft for analysis:

https://www.microsoft.com/en-us/wdsi/filesubmission

Choose **Software developer** and **Incorrectly detected as malware / block**. Over time and with enough downloads, SmartScreen warnings often fade.

## Full fix: Authenticode signing (paid)

Buy a standard **Authenticode code signing certificate** (for example SSL.com, DigiCert, or Sectigo — often roughly $200–400/year).

Then add these GitHub repository secrets:

| Secret | Value |
|--------|--------|
| `WINDOWS_CERTIFICATE_BASE64` | Base64-encoded `.pfx` file |
| `WINDOWS_CERTIFICATE_PASSWORD` | PFX password |

Create the base64 blob on Windows:

```powershell
[Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\path\to\cert.pfx")) | Set-Clipboard
```

Push a new tag. The release workflow will sign `HeatLens.exe` automatically when those secrets exist.

Local signing after build:

```powershell
.\scripts\sign_windows.ps1 -PfxPath C:\path\to\cert.pfx
```
