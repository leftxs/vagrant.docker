# Serverspec

*vagrant.docker* comes with [Serverspec](http://serverspec.org/) already installed, this is handy if you like TDD for your containers.

# Usage
In */home/vagrant/spec.d* you will find *example.spec.rb* which is a example spec file:

```
require "serverspec"
require "docker"

describe "Dockerfile" do
  image = Docker::Image.build_from_dir('.')

  it "installs the right version of Ubuntu" do
    expect(os_version).to include("trusty")
  end

  it "installs required packages" do
    expect(package("curl")).to be_installed
  end

  def os_version
    command("lsb_release -c").stdout
  end
end
```

This example will build your container and will check if this containers OS is Ubuntu 14.04 and if curl is installed.

For more info please check [Serverspec](http://serverspec.org/).


For running the check just run:

        bin/rspec spec.d/example.spec.rb


