# GEMINI.md

# Bluez360 Website Development Guidelines

## Project Identity

Business Name: Bluez360

Tagline:
See Inside. Build Trust. Gain Customers.

Founder:
Ajay Ajagiya

Business Type:
Google Certified 360° Virtual Tour Services

Primary Service:
Google Street View Virtual Tours

Service Areas:
Ahmedabad
Surat
Vadodara
Rajkot
Gandhinagar
Entire Gujarat

---

# IMPORTANT PROJECT RULE

Before making ANY UI, UX, design, architectural, or performance changes:

ANALYZE THE EXISTING WEBSITE FIRST.

The current website contains custom optimizations specifically designed for large numbers of Google Maps, Street View, Panorama, and YouTube embeds.

DO NOT replace existing systems unless there is a clear performance benefit.

PRESERVE existing behavior whenever possible.

This project prioritizes:

1. Performance
2. User Experience
3. Fast Loading
4. Mobile Compatibility
5. SEO
6. Conversion Optimization

Visual redesigns must not negatively affect performance.

---

# EXISTING ARCHITECTURE

Current stack:

* HTML5
* CSS3
* Vanilla JavaScript

The website currently does NOT use:

* React
* Vue
* Angular
* Backend Database
* CMS
* API-driven Content

Content is sourced from static JavaScript files.

Examples:

datajs/VirtualToursData.js
datajs/PanoramaData.js
datajs/StreetViewData.js

Data is stored as arrays of objects.

Typical structure:

{
title: "...",
iframeSrc: "..."
}

These files are loaded through script tags and become globally available.

Maintain compatibility with this approach unless instructed otherwise.

---

# DATA MANAGEMENT RULES

When creating new sections:

Prefer existing static-data architecture.

Use reusable data arrays.

Avoid hardcoded repeated HTML.

Generate cards dynamically where appropriate.

Maintain clean separation:

Data Layer
↓
Rendering Logic
↓
UI Components

---

# UI / UX PRESERVATION RULES

The current Bluez360 website theme and design language should be preserved and enhanced.

DO NOT redesign the website into a generic SaaS template.

DO NOT replace the current visual identity.

Instead:

Enhance existing layouts.
Improve spacing.
Improve typography.
Improve responsiveness.
Improve visual hierarchy.
Improve accessibility.

Maintain familiarity for returning users.

Any redesign should feel like:

"Bluez360 Version 2.0"

NOT

"An entirely different website."

---

# DESIGN PRINCIPLES

The website should feel:

Premium
Professional
Modern
Trustworthy
Technology-focused
Google-friendly

Avoid:

Overdesigned layouts
Excessive animations
Heavy effects
Glassmorphism overload
Unnecessary visual clutter

The content should remain the hero.

360° tours should remain the primary focus.

---

# PERFORMANCE CRITICAL FEATURES

The existing lazy-loading architecture is a core feature.

DO NOT REMOVE.

Current implementation uses:

IntersectionObserver

Behavior:

When cards enter viewport:
Load iframe

When cards leave viewport:
Unload iframe

This prevents:

Memory leaks
Browser lag
WebGL context exhaustion

Any future implementation must preserve this behavior.

Performance is more important than visual effects.

---

# IFRAME MANAGEMENT RULES

Google Maps embeds
Street View embeds
Panorama embeds
YouTube embeds

are expensive resources.

Always:

Lazy load embeds.
Unload unused embeds.
Prevent simultaneous loading of large numbers of iframes.

Never preload entire galleries.

Never load all tours at once.

---

# FULLSCREEN EXPERIENCE

The maximize/fullscreen tour experience is a key feature.

Maintain existing functionality.

Requirements:

Fullscreen should remain smooth.
Fullscreen tours should never be unloaded.
Background scrolling should not affect active tours.

Any redesign must preserve this behavior.

---

# HORIZONTAL SCROLL SYSTEM

The current horizontal carousel behavior is intentional.

Maintain:

Arrow navigation
Smooth scrolling
Card-based movement
Responsive behavior

Enhancements are allowed.

Removal is not.

---

# HOMEPAGE RULES

The homepage exists to showcase immersive experiences.

Priority order:

1. Panorama Experience
2. Virtual Tours
3. Trust Building
4. Lead Generation

The hero section should always highlight a real interactive experience.

Avoid static hero banners.

Interactive content converts better.

---

# LEAD GENERATION

Every page should encourage action.

Primary CTAs:

WhatsApp
Call Now
Book Demo

Maintain visibility without becoming intrusive.

Sticky CTAs are encouraged.

---

# SEO REQUIREMENTS

Optimize all pages for:

360 Virtual Tour Gujarat
Google Virtual Tour Gujarat
Google Street View Photographer Gujarat
Virtual Tour Ahmedabad
Virtual Tour Surat
Virtual Tour Vadodara
Virtual Tour Rajkot

Implement:

Meta Titles
Meta Descriptions
Structured Data
Open Graph Data
Local SEO Optimization

---

# ACCESSIBILITY

Maintain accessibility standards.

Requirements:

Keyboard Navigation
Proper Contrast
Alt Text
Semantic HTML
ARIA Labels where necessary

Accessibility improvements are encouraged.

---

# MOBILE FIRST

Most users will visit from mobile devices.

Every new component must be:

Responsive
Touch-friendly
Fast-loading

Never sacrifice mobile experience for desktop aesthetics.

---

# CODE QUALITY

When generating code:

Prefer reusable functions.

Avoid duplicated logic.

Follow existing coding patterns.

Use descriptive variable names.

Keep architecture simple.

Avoid introducing unnecessary dependencies.

---

# CONTENT GUIDELINES

Bluez360 messaging should focus on:

Trust
Visibility
Professionalism
Customer Experience
Business Growth

Avoid generic marketing language.

Use clear and benefit-driven copy.

---

# FINAL INSTRUCTION

Whenever suggesting improvements:

Respect existing architecture.
Respect existing UI patterns.
Respect lazy-loading optimizations.
Respect fullscreen tour functionality.
Respect performance-first philosophy.

Enhance the Bluez360 experience.

Do not rebuild it into a different product.
