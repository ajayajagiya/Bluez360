$path = 'css/common.css'
$content = [System.IO.File]::ReadAllText($path)

$oldNav = '    .nav-links {
        display: none;
        flex-direction: column;
        position: absolute;
        top: 4rem;
        left: 0;
        width: 100%;
        background-color: rgba(9, 89, 143, 0.98);
        padding: 1rem 0;
        text-align: center;
    }

    .nav-links.active {
        display: flex;
    }'

$newNav = '    .nav-links {
        display: flex;
        flex-direction: column;
        position: absolute;
        top: 4.5rem;
        left: 0;
        width: 100%;
        background-color: var(--primary);
        padding: 1rem 0;
        text-align: center;
        opacity: 0;
        visibility: hidden;
        transform: translateY(-10px);
        transition: all 0.3s ease;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .nav-links.active {
        opacity: 1;
        visibility: visible;
        transform: translateY(0);
    }'

$content = $content.Replace($oldNav.Replace("
", "
"), $newNav.Replace("
", "
"))
$content = $content.Replace($oldNav, $newNav)

[System.IO.File]::WriteAllText($path, $content)
