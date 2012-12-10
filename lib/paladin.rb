# Paladin class verifies if files exist and writes missing files to
# the paladin.log file.
class Paladin

	#Paladin takes a file with file names to be verified
	def initialize(file_name)
		@file_name = file_name
		@counter = 1
		@missed = 0

		@log = File.open("paladin.log", 'w')
	end

	#Write missing files to paladin.log
	def verify_files

		@log.write("Missing Files: \n")
		File.open(@file_name).each do |value| 
			value.chomp!

			unless File.exist?(value)
				@log.write("#{value}\n")
				@missed+=1
			end
			@counter+=1
		end
		@log.write("Total Files Verified: #{@counter}\n Total Files Missing: #{@missed}\n")
	end

	#Displays the contents of paladin.log
	def print_log
		File.open("paladin.log") do |f|
			puts f.gets
		end
	end
end
