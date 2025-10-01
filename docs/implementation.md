# ZeroInfra Portfolio Website - Implementation Documentation

## Overview

This repository contains the source code for the ZeroInfra portfolio website, a static site built with Hugo and deployed on GitHub Pages at **zeroinfra.dev**.

## Technology Stack

### Static Site Generator
- **Hugo** - Fast and flexible static site generator
- **Theme**: [Hugo Up Business](https://themes.gohugo.io/themes/hugo-up-business/)
  - Modern, responsive business theme
  - Designed for service-based businesses
  - Professional layout with portfolio and service sections

### Hosting & Deployment
- **GitHub Pages** - Free, reliable static site hosting
- **Custom Domain**: zeroinfra.dev
- **HTTPS**: Automatically provided by GitHub Pages

## Services Offered

The website showcases the following professional services:

1. **Web Development**
   - Custom website design and development
   - Modern, responsive, and performant solutions

2. **Web Hosting**
   - Reliable hosting infrastructure
   - High uptime and performance

3. **WordPress Hosting**
   - Managed WordPress hosting
   - Security updates and optimization

4. **Nextcloud Hosting**
   - Private cloud storage solutions
   - Self-hosted file synchronization and sharing

5. **Domain Hosting & Management**
   - Domain registration and DNS management
   - Domain transfer and renewal services

6. **Email Hosting & Management**
   - Professional email solutions
   - Secure and reliable email infrastructure

7. **Virtual Machines Hosting & Management**
   - VPS and cloud compute instances
   - Server management and monitoring

8. **Cloud Infrastructure Consultancy**
   - Complex infrastructure design
   - Architecture consulting and implementation
   - DevOps and automation solutions

## Repository Structure

```
.
├── config.toml           # Hugo site configuration
├── content/              # Markdown content files
│   ├── services/         # Service descriptions
│   └── _index.md         # Homepage content
├── static/               # Static assets (images, CSS, JS)
├── themes/               # Hugo themes
│   └── hugo-up-business/ # Business theme
├── layouts/              # Custom layout overrides (if needed)
├── public/               # Generated static site (git ignored)
└── docs/                 # Documentation
```

## Setup & Development

### Prerequisites
- Hugo (extended version recommended)
- Git

### Local Development
```bash
# Clone the repository
git clone https://github.com/[username]/zeroinfra.git
cd zeroinfra

# Install theme (if using git submodules)
git submodule update --init --recursive

# Run local development server
hugo server -D

# Access at http://localhost:1313
```

### Building for Production
```bash
# Generate static files
hugo

# Output will be in ./public/
```

## Deployment

The site is automatically deployed to GitHub Pages using GitHub Actions whenever changes are pushed to the main branch.

### GitHub Pages Configuration
- **Source**: Deploy from `gh-pages` branch or GitHub Actions
- **Custom Domain**: zeroinfra.dev (configured in repository settings)
- **CNAME**: DNS records point to GitHub Pages servers

### DNS Configuration
Point your domain to GitHub Pages:
- A records to GitHub Pages IPs (185.199.108.153, 185.199.109.153, 185.199.110.153, 185.199.111.153)
- CNAME record: www.zeroinfra.dev → [username].github.io

## Content Management

### Adding New Services
1. Create a new markdown file in `content/services/`
2. Add front matter with service details
3. Write service description in markdown
4. Commit and push changes

### Updating Homepage
Edit `content/_index.md` to modify homepage content, hero section, and call-to-action elements.

## Theme Customization

The Hugo Up Business theme provides:
- Service showcases
- Portfolio/project galleries
- Contact forms
- Team member profiles
- Testimonials
- Blog/news section

Custom overrides can be added in the `layouts/` directory without modifying the theme directly.

## SEO & Performance

- Fast load times thanks to Hugo's static generation
- SEO-friendly URLs and metadata
- Mobile-responsive design
- Optimized images and assets

## Maintenance

- Regular Hugo version updates
- Theme updates for security and features
- Content updates for services and portfolio items
- Monitoring site analytics and performance

## Contact & Support

For inquiries about services offered through ZeroInfra, visitors can use the contact form on the website or reach out via the provided contact information.
