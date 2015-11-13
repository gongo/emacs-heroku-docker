require 'spec_helper'

describe file('/app/emacs/bin/emacs') do
  it { should exist }
end

describe file('/app/cask/bin/cask') do
  it { should exist }
end
