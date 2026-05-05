$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Resolve-Path (Join-Path $ScriptDir "..")

if ($env:TRAESTACK_SOURCE_DIR) {
    $SourceDir = $env:TRAESTACK_SOURCE_DIR
} else {
    $SourceDir = Join-Path $RepoRoot "skills"
}

if ($env:TRAESTACK_TARGET_DIR) {
    $TargetDir = $env:TRAESTACK_TARGET_DIR
} else {
    $TargetDir = Join-Path $env:USERPROFILE ".trae\skills"
}

if ($env:TRAESTACK_BACKUP_DIR) {
    $BackupRoot = $env:TRAESTACK_BACKUP_DIR
} else {
    $BackupRoot = Join-Path $env:USERPROFILE ".trae\backups"
}

$Timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$BackupDir = Join-Path $BackupRoot "traestack-$Timestamp"

if (-not (Test-Path -LiteralPath $SourceDir)) {
    throw "skills source dir not found: $SourceDir"
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
New-Item -ItemType Directory -Force -Path $BackupRoot | Out-Null

Write-Host "Source: $SourceDir"
Write-Host "Target: $TargetDir"
Write-Host "Backup: $BackupDir"

$CopiedCount = 0
$BackedUpCount = 0

Get-ChildItem -LiteralPath $SourceDir -Directory | ForEach-Object {
    $SkillDir = $_.FullName
    $SkillName = $_.Name
    $SkillFile = Join-Path $SkillDir "SKILL.md"
    $TargetSkillDir = Join-Path $TargetDir $SkillName

    if (-not (Test-Path -LiteralPath $SkillFile)) {
        return
    }

    if (Test-Path -LiteralPath $TargetSkillDir) {
        New-Item -ItemType Directory -Force -Path $BackupDir | Out-Null
        Copy-Item -LiteralPath $TargetSkillDir -Destination (Join-Path $BackupDir $SkillName) -Recurse -Force
        $BackedUpCount++
    }

    if (Test-Path -LiteralPath $TargetSkillDir) {
        Remove-Item -LiteralPath $TargetSkillDir -Recurse -Force
    }

    Copy-Item -LiteralPath $SkillDir -Destination $TargetSkillDir -Recurse -Force
    $CopiedCount++

    Write-Host "Installed: $SkillName"
}

Write-Host ""
Write-Host "Done."
Write-Host "Installed skills: $CopiedCount"
Write-Host "Backed up skills: $BackedUpCount"
Write-Host "Trae target dir: $TargetDir"
