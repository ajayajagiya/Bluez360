$path = 'css/index.css'
$content = [System.IO.File]::ReadAllText($path)

$content = $content -replace '(?i)#09598f', 'var(--primary)'
$content = $content -replace '(?i)#07446e', 'var(--primary-hover)'
$content = $content -replace '(?i)#ffffff', 'var(--white)'
$content = $content -replace '(?i)#fff\b', 'var(--white)'
$content = $content -replace '(?i)#333\b', 'var(--text-main)'
$content = $content -replace '(?i)#555\b', 'var(--text-muted)'
$content = $content -replace '(?i)color:\s*#1a73e8', 'color: var(--primary)'
$content = $content -replace 'color:\s*white', 'color: var(--white)'

[System.IO.File]::WriteAllText($path, $content)
