# Portfolio

Flutter portfolio with project showcases and a downloadable resume.

## GitHub Pages

The [deployment workflow](.github/workflows/deploy-pages.yml) analyzes and builds
the website on every push to `main`, then publishes it to GitHub Pages. It can
also be started manually from the Actions tab.

One-time repository setup: open **Settings → Pages → Build and deployment** and
select **GitHub Actions** as the source. The workflow uses Pages metadata to set
the correct base path for project sites and custom domains.

The build includes the PDF from [web/himanshu.pdf](web/himanshu.pdf) and the project
covers from [assets/](assets/). Edit [web/resume.html](web/resume.html) and regenerate
the PDF when updating the resume; deployment publishes the existing PDF.
