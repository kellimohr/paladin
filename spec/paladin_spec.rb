require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Paladin" do

  	before :each do
    @file = Paladin.new("test.txt")
	end

  	it "should open the file and verify a file path exists" do
		@file.should be_an_instance_of Paladin
	end

	it "should accept and read a file" do
    	pending
  	end

  	it "should queue missing files" do
    	@file.missing_files("missing_test.txt").should include "missing_test.txt"
  	end

  	it "should queue exisiting files" do
    	@file.missing_files("test.txt").should include "test.txt"
  	end

  	it "should print missing files" do
    	@file.missing_files("missing_test.txt")
    	@file.get_missing_files.should eq "missing_test.txt"
  	end
end
