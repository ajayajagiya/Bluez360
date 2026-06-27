$path = 'css/common.css'
$content = [System.IO.File]::ReadAllText($path)

$rootVars = "@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

:root {
    --primary: #09598f;
    --primary-hover: #07446e;
    --bg-light: #09598f;
    --bg-alt: #07446e;
    --text-main: #333333;
    --text-muted: #555555;
    --white: #ffffff;
    --footer-bg: #1c1c1c;
    --contact-bg: #222222;
    --font-primary: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
}

@keyframes fadeIn {"

$content = $content -replace '@keyframes fadeIn \{', $rootVars

$content = $content -replace '(?i)#09598f', 'var(--primary)'
$content = $content -replace '(?i)#07446e', 'var(--primary-hover)'
$content = $content -replace '(?i)#f4f4f4', 'var(--bg-light)'
$content = $content -replace '(?i)#f9f9f9', 'var(--bg-alt)'
$content = $content -replace '(?i)#ffffff', 'var(--white)'
$content = $content -replace '(?i)#fff\b', 'var(--white)'
$content = $content -replace '(?i)#333\b', 'var(--text-main)'
$content = $content -replace '(?i)#555\b', 'var(--text-muted)'
$content = $content -replace '(?i)#1c1c1c', 'var(--footer-bg)'
$content = $content -replace '(?i)#222\b', 'var(--contact-bg)'

$oldFont = 'font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;'
$newFont = 'font-family: var(--font-primary);'
$content = $content.Replace($oldFont, $newFont)

$content = $content -replace 'height: 4rem;', 'height: 4.5rem;'
$content = $content -replace 'transition: background-color 0.3s ease;', "transition: all 0.3s ease;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);"

[System.IO.File]::WriteAllText($path, $content)
