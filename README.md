## Excluding Files

To exclude a file from the published website, add it to the `exclude` list in `_config.yml`. Files starting with `_`, `.`, or `#` are excluded by default. See the [GitHub Pages documentation](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/about-github-pages-and-jekyll) for more details.

## Serving and Viewing Locally

GitHub Pages technically uses [Jekyll](https://jekyllrb.com/) to build this site. However, for greater simplicity and portability, this site does not use any Jekyll-specific behavior (except for the `exclude` list in `_config.yml`). The site can therefore be viewed using a simple HTTP server. To start a local HTTP server, run the command
```bash
python3 -m http.server
```
