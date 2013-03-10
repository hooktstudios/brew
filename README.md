# brew.HS

Very simple website for Hookt Studios contributions to home brewing community.

## Getting started

    bundle install
    cp config/s3.yml-tmpl config/s3.yml
    rackup

## Deploying

To deploy (if you dare) configure the required s3 crendentials in `config/s3.yml`, then use capistrano.

    cap [development|production] deploy

[Development](http://dev.brew.monhs.com.s3-website-us-east-1.amazonaws.com)

[Production](http://www.brew.monhs.com.s3-website-us-east-1.amazonaws.com)