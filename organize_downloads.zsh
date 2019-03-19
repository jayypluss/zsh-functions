organize_downloads() {
	mkdir -p ~/General_Storage/Organized_Downloads/Downloaded_Compressed
	mkdir -p ~/General_Storage/Organized_Downloads/Downloaded_Documents
	mkdir -p ~/General_Storage/Organized_Downloads/Downloaded_Code/C_CPP
	mkdir -p ~/General_Storage/Organized_Downloads/Downloaded_Code/Java
	mkdir -p ~/General_Storage/Organized_Downloads/Downloaded_Picture
	mkdir -p ~/General_Storage/Organized_Downloads/Downloaded_Videos
	mv -v ~/Downloads/*.zip ~/General_Storage/Organized_Downloads/Downloaded_Compressed
	mv -v ~/Downloads/*.tar.gz ~/General_Storage/Organized_Downloads/Downloaded_Compressed
	mv -v ~/Downloads/*.pdf ~/General_Storage/Organized_Downloads/Downloaded_Documents
	mv -v ~/Downloads/*.doc ~/General_Storage/Organized_Downloads/Downloaded_Documents
	mv -v ~/Downloads/*.docx ~/General_Storage/Organized_Downloads/Downloaded_Documents
	mv -v ~/Downloads/*.h ~/General_Storage/Organized_Downloads/Downloaded_Code/C_CPP
	mv -v ~/Downloads/*.c ~/General_Storage/Organized_Downloads/Downloaded_Code/C_CPP
	mv -v ~/Downloads/*.hpp ~/General_Storage/Organized_Downloads/Downloaded_Code/C_CPP
	mv -v ~/Downloads/*.cpp ~/General_Storage/Organized_Downloads/Downloaded_Code/C_CPP
	mv -v ~/Downloads/*.java ~/General_Storage/Organized_Downloads/Downloaded_Code/Java
	mv -v ~/Downloads/*.jpg ~/General_Storage/Organized_Downloads/Downloaded_Pictures
	mv -v ~/Downloads/*.png ~/General_Storage/Organized_Downloads/Downloaded_Pictures
	mv -v ~/Downloads/*.webm ~/General_Storage/Organized_Downloads/Downloaded_Videos
}