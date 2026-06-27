$files = @('css/gallery.css', 'css/pricing.css')
foreach ($path in $files) {
    if ([System.IO.File]::Exists($path)) {
        $content = [System.IO.File]::ReadAllText($path)
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
        $content = $content -replace 'color:\s*white', 'color: var(--white)'
        [System.IO.File]::WriteAllText($path, $content)
    }
}
