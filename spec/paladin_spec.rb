require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Paladin" do

  before :each do
    @file = Paladin.new("test.txt")
	end

  it "should open the file and verify a file path exists" do
		@file.should be_an_instance_of Paladin
	end

	it "should accept and read a file" do
    	@file.verify_files
  end

  it "should create paladin.log" do
    File.exists?("@file.missing_files") == true
  end

  it "should open and print paladin.log" do
    @file.print_log.should be_nil
  end
end
