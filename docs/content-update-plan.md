# ZeroInfra Content Update Plan

## Overview
This document outlines the plan to replace the default Hugo Up Business theme boilerplate content with actual ZeroInfra business content.

## Current State Analysis

The site currently contains:
- **Configuration**: Generic branding, placeholder social links, fake address
- **Navigation**: Default menu structure (Home, How we work, Our team, Pricing, Blog)
- **Homepage Sections**:
  - Hero: Generic business messaging
  - Services: 3 duplicate "Web development" cards with lorem ipsum
  - Portfolio: 3 duplicate eCommerce project examples
  - Testimonials: 5 anonymous customer testimonials
  - Brands: Placeholder logos (Samsung, Google, Adobe, Spotify, Dropbox)
  - CTA: Generic "Start your business now!" call-to-action
- **Blog**: 5 placeholder posts (rich-content, placeholder-text, math-typesetting, markdown-syntax, emoji-support)

## Content Update Plan

### 1. Site Configuration Updates

**File**: `config/_default/params.yaml`

- [x] Update title to "ZeroInfra"
- [x] Update description to reflect actual business focus
- [ ] Update/remove fake location (3891 Ranchview Dr. Richardson, California 62639)
- [ ] Keep contact email as hello@zeroinfra.dev
- [ ] Update social links or remove placeholder links (dribbble, instagram, facebook, twitter)
- [ ] Review logo and favicon settings

**File**: `config/_default/hugo.yaml`

- [x] baseURL already set to https://zeroinfra.dev
- [x] Title already updated to "ZeroInfra"

### 2. Navigation Menu Updates

**File**: `config/_default/menus.yaml`

Update navigation to focus on services and customer engagement:

**Proposed menu structure**:
- Home
- Services (link to services section or dedicated page)
- About/How We Work
- Contact
- Blog (optional - keep if planning to publish content)

**Remove/Update**:
- "Our team" (unless you have a team to showcase)
- "Pricing" (unless you want pricing transparency)
- "Book a call" button (update with actual booking link or contact form)

### 3. Homepage Content Updates

#### Hero Section
**File**: `data/home/hero.yaml`

**Current**: "How to **level up** your business"

**Proposed updates**:
- **Title**: Focus on infrastructure and hosting solutions
- **Text**: Clear value proposition for ZeroInfra services
- **Buttons**:
  - "View Services" → link to services section
  - "Get Started" → link to contact form or consultation booking
- **Image**: Replace placeholder hero image with relevant infrastructure/cloud graphic

#### Services Section
**File**: `data/home/services.yaml`

**Current**: 3 duplicate "Web development" cards

**Required updates**:
Replace with 6-8 actual service cards:

1. **Web Development**
   - Custom websites and applications
   - Modern, responsive, performant solutions

2. **Web Hosting**
   - Reliable, high-performance hosting
   - 99.9% uptime guarantee

3. **WordPress Hosting**
   - Managed WordPress with automatic updates
   - Security and performance optimization

4. **Nextcloud Hosting**
   - Private cloud storage solutions
   - Secure file sync and collaboration

5. **Domain Management**
   - Domain registration and transfers
   - DNS management and configuration

6. **Email Hosting**
   - Professional business email
   - Secure, spam-protected infrastructure

7. **VPS & VM Hosting**
   - Virtual machine provisioning
   - Scalable compute resources

8. **Cloud Consultancy**
   - Infrastructure architecture design
   - DevOps and automation guidance

**Each card needs**:
- Relevant icon/image
- Clear title
- Concise description (2-3 sentences)
- "Learn more" link (to dedicated service pages or contact)

#### Portfolio Section
**File**: `data/home/portfolio.yaml`

**Options**:
1. **Disable temporarily** (`enable: false`) until you have real client projects to showcase
2. **Keep enabled** and add 2-3 real project case studies
3. **Repurpose** as a "Solutions" showcase rather than client portfolio

**If keeping enabled**, each project should include:
- Real project screenshot/graphic
- Service category (e.g., "Web Hosting", "Cloud Migration")
- Project title and brief description
- Links to live sites (if public) or case studies

#### Testimonials Section
**File**: `data/home/testimonials.yaml`

**Options**:
1. **Disable** (`enable: false`) until you have real customer testimonials
2. **Replace** with actual customer feedback (even 1-2 real testimonials are better than fake ones)
3. **Keep placeholder** but update with more specific, believable content related to your services

**Recommendation**: Disable until you have authentic testimonials.

#### Brands Section
**File**: `data/home/brands.yaml`

**Current**: Shows logos for Samsung, Google, Adobe, Spotify, Dropbox

**Options**:
1. **Disable** (`enable: false`) - recommended until you have real client logos with permission
2. **Replace** with technology partner logos (e.g., Hugo, GitHub Pages, cloud providers you work with)
3. **Repurpose** as "Powered By" or "Technologies We Use" section

**Recommendation**: Disable or repurpose as technology stack showcase.

#### CTA Section
**File**: `data/home/cta.yaml`

**Current**: "Start your business now!"

**Proposed updates**:
- **Title**: "Ready to modernize your infrastructure?" or "Get started with reliable hosting today"
- **Button**: "Schedule a Consultation" or "Contact Us"
- **Link**: Actual contact form, email, or booking calendar
- **Image**: Replace with relevant infrastructure graphic

### 4. Blog Content

**Directory**: `content/post/`

**Current posts** (all boilerplate):
- `rich-content.md` - Theme feature showcase
- `placeholder-text.md` - Lorem ipsum filler
- `math-typesetting.md` - Math rendering examples
- `markdown-syntax.md` - Markdown guide
- `emoji-support.md` - Emoji examples

**Options**:
1. **Delete all** placeholder posts and start fresh
2. **Disable blog** entirely if not planning to publish content
3. **Replace** with 2-3 initial posts about your services, industry insights, or tutorials

**Recommended initial blog posts** (if keeping blog):
1. "Why Choose Managed WordPress Hosting?" - Educational content
2. "Self-Hosted Cloud Storage with Nextcloud" - Service spotlight
3. "5 Signs You Need Professional Infrastructure Consultancy" - Lead generation

### 5. Additional Content Needs

#### Contact Information
- **Email**: hello@zeroinfra.dev (already configured)
- **Contact form**: Verify if theme has built-in form or needs integration
- **Location**: Remove fake address or add real location if applicable
- **Phone**: Add if you have a business phone number

#### Social Media
- Remove or update placeholder social links in `params.yaml`
- Only include platforms you actively use for business

#### Images & Assets
- Replace all placeholder images in `static/images/` or equivalent
- Create/source relevant graphics for:
  - Hero section
  - Service cards (8 unique images/icons)
  - CTA section
  - Portfolio (if keeping)
  - Logo and favicon

#### Legal Pages
Consider adding:
- Privacy Policy
- Terms of Service
- Cookie Policy (if using analytics)
- Service Level Agreement (SLA) for hosting services

## Implementation Priority

### Phase 1: Essential Updates (Required before launch)
1. ✅ Site title and description
2. Contact information (email confirmed, remove fake address)
3. Hero section messaging
4. Services section (all 8 services)
5. Navigation menu
6. CTA section
7. Disable/remove fake testimonials, brands, portfolio

### Phase 2: Content Enhancement (Post-launch)
1. Real portfolio/case studies (as projects complete)
2. Blog posts (if maintaining blog)
3. Customer testimonials (as they arrive)
4. About/team page content
5. Individual service detail pages

### Phase 3: Advanced Features (Future)
1. Contact form integration
2. Booking/scheduling system
3. Pricing calculator or quote request form
4. Knowledge base or documentation section
5. Analytics integration

## File Checklist

- [ ] `config/_default/params.yaml` - Branding, contact, social
- [ ] `config/_default/menus.yaml` - Navigation structure
- [ ] `data/home/hero.yaml` - Hero section
- [ ] `data/home/services.yaml` - Services cards (8 services)
- [ ] `data/home/cta.yaml` - Call-to-action
- [ ] `data/home/portfolio.yaml` - Disable or replace
- [ ] `data/home/testimonials.yaml` - Disable or replace
- [ ] `data/home/brands.yaml` - Disable or repurpose
- [ ] `content/_index.md` - Homepage content (if applicable)
- [ ] `content/post/*` - Delete or replace blog posts
- [ ] Images/assets - Replace placeholders

## Next Steps

1. Decide which sections to enable/disable initially
2. Gather or create actual content for each section
3. Source or create images/graphics for services
4. Update configuration files systematically
5. Test locally with `hugo server`
6. Review all content for accuracy and consistency
7. Deploy to GitHub Pages

## Questions to Address

1. Do you want to maintain a blog section?
2. Do you have client projects to showcase, or should portfolio be disabled?
3. Do you have a preferred contact method (form, email, calendar booking)?
4. Should pricing be transparent or quote-based?
5. Do you have real testimonials to use?
6. What images/graphics do you have available for services?
7. Are there specific technologies or platforms you want to highlight?
