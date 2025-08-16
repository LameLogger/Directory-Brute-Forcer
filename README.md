# Directory-Brute-Forcer
A Directory Brute Fo📁 Project: Directory Brute Forcer in Bash
🧠 What It Does

Takes a target URL and a wordlist

Tries each word in the wordlist as a potential directory or file on the web server

Checks HTTP response codes (like 200 OK, 403 Forbidden, 404 Not Found)

Logs valid directories/files

✅ Features

Takes in target URL and wordlist as arguments

Handles HTTP status code filtering

Option to save output to a file

Optionally show only successful hits

🛠️ Tools Used

curl or wget

grep, awk, sed

📄 Sample Script: dirbuster.shrcer is a great Bash project that mimics tools like dirb or gobuster, and helps you understand how HTTP requests work and how to automate web enumeration.
🧪 How to Run
chmod +x dirbuster.sh
./dirbuster.sh https://example.com /path/to/wordlist.txt 200

📌 Example Wordlist

Save this as small.txt:

admin
login
dashboard
uploads
images
config
hidden

📦 Ideas for Expansion

Multithreading (parallel requests with xargs -P or &)

Add support for file extensions (e.g., .php, .html)

Random User-Agent headers

Proxy support (curl -x)

Output to file: --output results.txt
