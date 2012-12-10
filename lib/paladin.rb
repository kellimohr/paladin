# Paladin class verifies if files exist and writes missing files to
# the paladin.log file.
class Paladin

	#Paladin takes a default file file_spec.txt in the same directory
	def self.load_file
		@file_name = "file_spec.txt"
		@counter = 0
		@missed = 0

		@log = File.open("paladin.log", 'w')
	end

	#Write missing files to paladin.log
	def self.verify_files

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
end
