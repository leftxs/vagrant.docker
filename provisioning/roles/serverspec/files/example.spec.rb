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

# For more info check the serverspec docs
