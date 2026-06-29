---
name: Heritage Modern
colors:
  surface: '#f8f9fa'
  surface-dim: '#d9dadb'
  surface-bright: '#f8f9fa'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f4f5'
  surface-container: '#edeeef'
  surface-container-high: '#e7e8e9'
  surface-container-highest: '#e1e3e4'
  on-surface: '#191c1d'
  on-surface-variant: '#44474d'
  inverse-surface: '#2e3132'
  inverse-on-surface: '#f0f1f2'
  outline: '#75777e'
  outline-variant: '#c5c6ce'
  surface-tint: '#4e5f7c'
  primary: '#00030a'
  on-primary: '#ffffff'
  primary-container: '#0a1d37'
  on-primary-container: '#7586a5'
  inverse-primary: '#b6c7e9'
  secondary: '#775a19'
  on-secondary: '#ffffff'
  secondary-container: '#fed488'
  on-secondary-container: '#785a1a'
  tertiary: '#0d0000'
  on-tertiary: '#ffffff'
  tertiary-container: '#440001'
  on-tertiary-container: '#f34335'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#d6e3ff'
  primary-fixed-dim: '#b6c7e9'
  on-primary-fixed: '#081c36'
  on-primary-fixed-variant: '#364763'
  secondary-fixed: '#ffdea5'
  secondary-fixed-dim: '#e9c176'
  on-secondary-fixed: '#261900'
  on-secondary-fixed-variant: '#5d4201'
  tertiary-fixed: '#ffdad5'
  tertiary-fixed-dim: '#ffb4a9'
  on-tertiary-fixed: '#410001'
  on-tertiary-fixed-variant: '#930004'
  background: '#f8f9fa'
  on-background: '#191c1d'
  surface-variant: '#e1e3e4'
typography:
  display-lg:
    fontFamily: Playfair Display
    fontSize: 48px
    fontWeight: '700'
    lineHeight: 56px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Playfair Display
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
  headline-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
  body-lg:
    fontFamily: Hanken Grotesk
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Hanken Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-caps:
    fontFamily: Hanken Grotesk
    fontSize: 12px
    fontWeight: '700'
    lineHeight: 16px
    letterSpacing: 0.1em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  base: 8px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 64px
  section-gap: 80px
---

## Brand & Style

The brand personality is rooted in the "New Traditional" movement—honoring the storied history of the classic barbershop while embracing the precision and luxury of a high-end modern spa. It targets a discerning male clientele who values craftsmanship, routine, and a premium grooming experience.

The design style is **Corporate / Modern with Subtle Brutalist accents**. It utilizes a structured, high-contrast framework to convey authority and reliability. Large, editorial typography provides a sense of fashion-forward sophistication, while clean, utilitarian layouts ensure the digital experience is as efficient as a master barber's shave. The UI should evoke a sense of "quiet luxury"—calm, deliberate, and exceptionally polished.

## Colors

This design system uses a palette inspired by traditional barbershop iconography, elevated for a luxury spa context.

*   **Primary (Midnight Navy):** Used for primary backgrounds, text, and heavy structural elements. It provides the "anchor" for the brand's masculine identity.
*   **Secondary (Metallic Gold):** Used sparingly for accents, highlights, call-to-action buttons, and borders. It represents the "Spa" aspect of the business—luxury and high-end service.
*   **Tertiary (Barber Red):** Used strictly for critical notifications, special offers, or tiny stylistic nods to the barbershop pole.
*   **Neutral (Crisp White/Cloud):** Ensures the interface remains clean and professional, providing the necessary breathing room to prevent the navy from feeling too heavy.

## Typography

The typography strategy relies on the juxtaposition of high-contrast Serif and systematic Sans-Serif fonts.

**Headlines** utilize a high-contrast serif to establish an editorial, premium feel. Large display sizes should use tighter letter spacing to feel "locked in" and impactful.

**Body text and Labels** utilize a contemporary Grotesk font. This ensures maximum legibility for service menus, booking flows, and descriptions. Labels are often set in uppercase with increased tracking to mimic the look of luxury vintage signage.

## Layout & Spacing

The design system employs a **Fluid Grid** model with generous margins to create a spacious, "spa-like" atmosphere.

*   **Desktop:** 12-column grid with 64px side margins. Content is often centered in a 1200px max-width container to maintain focus.
*   **Mobile:** 4-column grid with 16px side margins.
*   **Vertical Rhythm:** Based on an 8px scale. Section spacing is intentionally large (80px+) to allow the high-quality photography and typography to breathe.

Use asymmetrical layouts (e.g., text occupying 5 columns, image occupying 7 columns) to create a modern, dynamic flow that feels less like a template and more like a curated magazine.

## Elevation & Depth

Visual hierarchy is achieved through **Tonal Layers** and **Low-Contrast Outlines** rather than aggressive shadows.

*   **Surfaces:** Use subtle shifts between the Navy primary and slightly lighter/darker shades to denote hierarchy.
*   **Outlines:** Use 1px solid borders in Gold or low-opacity White to define cards and containers. This maintains a "flat" but structured aesthetic.
*   **Depth:** For critical interactive elements (like the 'Book Now' modal), a very soft, diffused shadow (0px 20px 40px rgba(0,0,0,0.1)) can be used to lift the element off the page without breaking the clean aesthetic.

## Shapes

The shape language is primarily **Soft (0.25rem)**. While a traditional barbershop might suggest sharp edges, the "Spa" influence requires a slight softening to appear welcoming.

*   **Standard Corners:** 4px radius for input fields and small cards.
*   **Large Containers:** 8px radius for main content blocks or hero images.
*   **Buttons:** Standard buttons follow the 4px rule, but "Action" buttons (like Booking) can optionally be pill-shaped to differentiate them as the primary conversion point.

## Components

### Buttons
Primary buttons use the Navy background with Gold text and a subtle 1px Gold border. Hover states should invert or slightly brighten the Gold. Secondary buttons use a ghost style (transparent background, 1px Navy or Gold border).

### Cards
Service cards should feature a large image ratio (1:1 or 4:5) to showcase the quality of work. Titles should be in the Serif headline font, with prices clearly marked in the Sans-Serif label style.

### Input Fields
Clean, underlined or minimally bordered (bottom-only) fields to evoke a bespoke, high-end stationary feel. Labels sit above the field in the uppercase Sans-Serif style.

### Lists
Service menus should use a "dotted leader" style (Service Name ........ $Price) to bridge the gap between classic menus and modern UI.

### Chips/Tags
Used for service categories (e.g., "Haircut", "Shave", "Facial"). These should have a Navy background with White text and a 1px border, keeping them small and unobtrusive.