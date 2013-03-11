# brew.HS

> Very simple website for Hookt Studios contributions to home brewing community.

## Getting started

    bundle install
    rackup

## Deploying

To deploy (if you dare) configure the required s3 crendentials in `config/s3.yml`, then use capistrano.

    cp config/s3.yml-tmpl config/s3.yml
    cap [development|production] deploy

Links :
[development](http://dev.brew.monhs.com.s3-website-us-east-1.amazonaws.com),
[production](http://www.brew.monhs.com.s3-website-us-east-1.amazonaws.com)

## Credits

![hooktstudios](http://hooktstudios.com/logo.png)

Made for fun by [hooktstudios](http://github.com/hooktstudios).

Copy & have fun too!