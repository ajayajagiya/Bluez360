$cssPath = "css/common.css"
$cssContent = [System.IO.File]::ReadAllText($cssPath)
$oldCard = ".iframe-tour-card {`n    background-color: #fff;`n    border-radius: 8px;"
$newCard = ".iframe-tour-card {`n    background-color: var(--white);`n    border-radius: 12px;"
$cssContent = $cssContent.Replace($oldCard, $newCard)
$oldH3 = ".iframe-tour-card h3 {`n`n    margin: -1.5rem -1.5rem 1.5rem -1.5rem;`n    font-size: 1.25rem;`n    color: #ffffff;`n    background-color: var(--primary);`n`n    padding: 1rem 1.5rem;`n`n    box-sizing: border-box;`n    line-height: 1.4;`n    min-height: 5.5rem;`n    display: flex;`n    align-items: center;`n}"
$newH3 = ".iframe-tour-card h3 {`n    margin: 0;`n    padding: 0;`n    font-size: 1.35rem;`n    color: var(--white);`n    background-color: transparent;`n    text-shadow: 0 2px 5px rgba(0,0,0,0.8);`n    font-weight: 600;`n    display: block;`n    min-height: auto;`n}"
$cssContent = $cssContent.Replace($oldH3, $newH3)
$oldP = ".iframe-tour-card p {`n    margin-top: 0;`n    margin-bottom: 0;`n    color: var(--text-muted);`n    font-size: 1rem;`n    line-height: 1.5;`n}"
$newP = ".iframe-tour-card p {`n    margin-top: 0.5rem;`n    margin-bottom: 0;`n    color: rgba(255, 255, 255, 0.95);`n    text-shadow: 0 1px 4px rgba(0,0,0,0.8);`n    font-size: 0.95rem;`n    line-height: 1.5;`n}"
$cssContent = $cssContent.Replace($oldP, $newP)
$oldBtn = ".card-maximize-btn {`n    position: absolute;`n    bottom: 30px;`n    left: 12px;`n    background-color: rgba(9, 89, 143, 0.8);`n    color: white;`n    border: 1px solid rgba(255, 255, 255, 0.5);`n    border-radius: 8px;`n    width: 40px;`n    height: 40px;`n    display: flex;`n    align-items: center;`n    justify-content: center;`n    cursor: pointer;`n    z-index: 6;`n    transition: all 0.3s ease;`n    opacity: 0.85;`n}`n`n.card-maximize-btn:hover {`n    background-color: var(--primary-hover);`n    transform: scale(1.1);`n    opacity: 1;`n    box-shadow: 0 2px 8px rgba(0,0,0,0.3);`n}"
$newBtn = ".card-maximize-btn {`n    position: absolute;`n    bottom: 20px;`n    right: 20px;`n    left: auto;`n    background-color: rgba(255, 255, 255, 0.95);`n    color: var(--primary);`n    border: none;`n    border-radius: 50%;`n    width: 44px;`n    height: 44px;`n    display: flex;`n    align-items: center;`n    justify-content: center;`n    cursor: pointer;`n    z-index: 6;`n    transition: all 0.3s ease;`n    box-shadow: 0 4px 10px rgba(0,0,0,0.25);`n    opacity: 0.9;`n}`n`n.card-maximize-btn:hover {`n    background-color: var(--white);`n    transform: scale(1.1);`n    opacity: 1;`n    box-shadow: 0 6px 14px rgba(0,0,0,0.35);`n}"
$cssContent = $cssContent.Replace($oldBtn, $newBtn)
[System.IO.File]::WriteAllText($cssPath, $cssContent)
