require 'spec_helper'

describe NoteTaker do
  it "should take a config" do
    configuration = NoteConfig.new()
    tst = NoteTaker.new(configuration)
    expect(tst.config).to equal(configuration)
  end



end

