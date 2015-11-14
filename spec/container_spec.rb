require 'spec_helper'

describe file('/app/emacs/bin/emacs') do
  it { should exist }
end

describe file('/app/cask/bin/cask') do
  it { should exist }
end

describe file('/app/user') do
  it { should be_directory }
end

describe file('/app/user/.cask') do
  it { should be_directory }
end

describe file('/app/.profile.d/path.sh') do
  it { should exist }
end
