# A GitHub Action For Just Building Jekyll Sites

We're only building the site here. If you want to do some other stuff with those
site files like deploying them, or running some build scripts on them—you'll 
have to connect up some other actions to your workflow.

## Secrets

None needed.

## Examples

```yaml
jobs:
  build:
    name: Build website
    runs-on: ubuntu-latest
    steps:
    - name: Checkout repository
      uses: actions/checkout@v1
      with:
        ref: master
    - name: Run Jekyll
      uses: faph/action-jekyll-2/build@master
```

Clones the repo and builds the site—that's it.

## Caveats

* Needs a Gemfile in the working directory.
* `destination:` should be set to `./build` in your _config.yml file—as God demands.
* Be sure that any custom gems needed are included in your Gemfile.