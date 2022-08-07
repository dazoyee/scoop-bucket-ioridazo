$prompt_current_dir = Get-Location

$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $path
Set-Location ..\

if (Test-Path bin\checkver.ps1) {
    Write-Host "Check Bucket: $_" -ForegroundColor Green
    Get-ChildItem bucket\*.json | ForEach-Object {
        $json = $_.Basename
        .\bin\checkver.ps1 $json -u
        if ($(git diff $_)) {
            Write-Host "  => Update: $json" -ForegroundColor Blue
            git commit -a -m "Update: $json"
        }
    }
    if ($(git diff HEAD..origin/main)) {
        Write-Host "  => Push bucket..."
        git push origin main
    }
}

Set-Location $prompt_current_dir
