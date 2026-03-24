source "https://rubygems.org"

# GitHub Pages Gemfile
# Use the GitHub-pages gem to ensure you're using the same version as GitHub Pages

gem "github-pages", group: :jekyll_plugins

# Jekyll Plugins for SEO
group :jekyll_plugins do
  gem "jekyll-sitemap"      # Auto-generates sitemap.xml
  gem "jekyll-seo-tag"      # Auto-adds SEO meta tags
  gem "jekyll-feed"         # Generates RSS feed
  gem "jemoji"              # Emoji support
end

# Performance
gem "webrick", "~> 1.7" if RUBY_PLATFORM =~ /mingw|mswin|java/ || Gem.win_platform?
