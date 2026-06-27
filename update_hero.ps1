$htmlPath = "index.html"
$htmlContent = [System.IO.File]::ReadAllText($htmlPath)
$htmlOld = "            <button class=""slider-btn prev-btn"""
$htmlNew = "            <div class=""interaction-prompt"">`n                <span class=""material-icons""><img src=""./assets/svg/360.svg"" alt=""360"" width=""32"" height=""32"" style=""filter: brightness(0) invert(1);""></span>`n                <p>Drag to Explore</p>`n            </div>`n            <button class=""slider-btn prev-btn"""
$htmlContent = $htmlContent.Replace($htmlOld, $htmlNew)
[System.IO.File]::WriteAllText($htmlPath, $htmlContent)
$cssPath = "css/index.css"
$cssContent = [System.IO.File]::ReadAllText($cssPath)
$cssNew = "`n.interaction-prompt {`n    position: absolute;`n    top: 50%;`n    left: 50%;`n    transform: translate(-50%, -50%);`n    background: rgba(0, 0, 0, 0.65);`n    color: var(--white);`n    padding: 0.8rem 1.8rem;`n    border-radius: 50px;`n    display: flex;`n    align-items: center;`n    gap: 12px;`n    z-index: 5;`n    pointer-events: none;`n    animation: promptPulse 2.5s infinite;`n    backdrop-filter: blur(6px);`n    transition: opacity 0.5s ease;`n}`n.interaction-prompt p {`n    margin: 0;`n    font-size: 1.1rem;`n    font-weight: 500;`n    letter-spacing: 0.5px;`n}`n@keyframes promptPulse {`n    0% { transform: translate(-50%, -50%) scale(1); box-shadow: 0 0 0 0 rgba(255,255,255, 0.2); }`n    50% { transform: translate(-50%, -50%) scale(1.03); box-shadow: 0 0 0 10px rgba(255,255,255, 0); }`n    100% { transform: translate(-50%, -50%) scale(1); box-shadow: 0 0 0 0 rgba(255,255,255, 0); }`n}"
$cssContent = $cssContent + $cssNew
[System.IO.File]::WriteAllText($cssPath, $cssContent)
$jsPath = "js/index.js"
$jsContent = [System.IO.File]::ReadAllText($jsPath)
$jsOld = "        panoramaContainer.addEventListener('mouseenter', stopAutoScroll, { once: true });`r`n        panoramaContainer.addEventListener('touchstart', stopAutoScroll, { once: true });"
$jsNew = "        const hidePrompt = function() {`r`n            const prompt = document.querySelector('.interaction-prompt');`r`n            if (prompt) {`r`n                prompt.style.opacity = '0';`r`n                setTimeout(function() { prompt.remove(); }, 500);`r`n            }`r`n            stopAutoScroll();`r`n        };`r`n        panoramaContainer.addEventListener('mouseenter', hidePrompt, { once: true });`r`n        panoramaContainer.addEventListener('touchstart', hidePrompt, { once: true });"
$jsContent = $jsContent.Replace($jsOld, $jsNew)
[System.IO.File]::WriteAllText($jsPath, $jsContent)
