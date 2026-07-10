param(
    [Parameter(Mandatory = $true)]
    [string] $PfxPath,

    [string] $Password = $env:WINDOWS_CERTIFICATE_PASSWORD,

    [string] $ExePath = (Join-Path $PSScriptRoot "..\dist\HeatLens.exe")
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$ExePath = (Resolve-Path -LiteralPath $ExePath).Path
if (-not (Test-Path -LiteralPath $PfxPath)) {
    throw "Certificate not found: $PfxPath"
}

$signtool = Get-Command signtool.exe -ErrorAction SilentlyContinue
if (-not $signtool) {
    throw "signtool.exe not found. Install the Windows SDK or Visual Studio Build Tools."
}

$signArgs = @(
    "sign",
    "/fd", "SHA256",
    "/tr", "http://timestamp.digicert.com",
    "/td", "SHA256",
    "/f", $PfxPath
)
if ($Password) {
    $signArgs += @("/p", $Password)
}
$signArgs += $ExePath

Write-Host "Signing $ExePath"
& $signtool.Source @signArgs
Write-Host "Signed."
