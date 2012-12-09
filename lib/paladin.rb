class Paladin

	def initialize(file_name)
		@file_name = file_name
		@missing_files = []
		@existing_files = []

	end

	def verify_files

		File.open(@file_name).each do |value| 
			value.chomp!

			if File.exist?(value)
				existing_files(value)
			else
				missing_files(value)
			end
		end
	end

	def missing_files(value)
		@missing_files.push(value)
	end

	def existing_files(value)
		@exisiting_files.push(value)
	end

	def get_missing_files
		puts @missing_files.inject
	end
end
