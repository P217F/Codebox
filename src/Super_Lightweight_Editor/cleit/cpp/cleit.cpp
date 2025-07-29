/*
 * CLEIT - The Lightweight Editor Code for C++ that less than 10000 lines of code. Run fast, effective code, save storage.
 * Options:
 * +) Purpose: Lightweight, No plugins, No treesitter, Saving resources, Effective 
 * +) Line of codes: < 10000 lines
 * +) Storage: from 50MB -> less than 100MB
 * +) Dependent system and environment: Yes
 * +) RAM: 80MB -> 200MB(if open big file with more 10000 lines of code)
 * +) Who use: senior coder, system developer, kernel developer, low level developer, ... (not for beginners and high level programming)
 * +) Support language: Almost C++, rest C.
 * +) Language to build software: C, C++
 * +) Cost: Free
 * +) Requests: Terminal, Linux, Macos, Window. No support for termux on Android.
 * +) Author: Allen Eveland, 2025
 * +) Github: https://github.com/P217F/Src_Code.git
*/

// Include file
#include <iostream>
#include <fstream>
#include <filesystem>
// Define
// Data
// Function
int create_file_if_not_exists(const std::filesystem::path& path) {
    if (!std::filesystem::exists(path)) {
        std::ofstream file(path);
        if (!file) {
            return -1;    // error to create file
        }
    } else {
        return 1;   // file existed
    }
    return 0;    // file created
}
// Init
int main(int argc, char *argv[]) {
    if (argc < 2) {
        std::cout << "Usage: sle <filename>.<ext> <modes>" << std::endl;
        return 1;
    }
    std::filesystem::path filepath = argv[1];    // Creating directort if not exist
    if (!std::filesystem::exists(filepath.parent_path())) {
        std::filesystem::create_directories(filepath.parent_path());
    }
    
    int create_file_return = create_file_if_not_exists(filepath);
    if (create_file_return == -1) {
        std::cerr << "ERROR: Cannot create file because something went wrong with your system. Please try again or checking system!!!" << std::endl;
        return 1;
    }
    return 0;
}

