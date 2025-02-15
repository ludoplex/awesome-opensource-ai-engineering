#!/bin/bash

# Check if at least one argument is provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <name1> [<name2> ...]"
    exit 1
fi

# Loop through each provided name
for name in "$@"; do
    # Convert to lowercase
    lowercase_name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
    filename="${lowercase_name}.md"
    
    # Check if the file already exists, if not, create it
    if [ ! -f "$filename" ]; then
        # Create markdown file
        cat << EOF > "$filename"
# $name
## Overview

## Description

### 💡 $name Key Highlights

### 🤔 Why should The AI Engineer care about $name?


## 📊 $name Stats
* 👷🏽‍♀️ Builders:
* 👩🏽‍💼 Builders on LinkedIn:
* 👩🏽‍🏭 Builders on X: 
* 💾 Used in XXX repositories
* 👩🏽‍💻 Contributors: 
* 💫 GitHub Stars: 
* 🍴 Forks: 
* 👁️ Watch: 
* 🪪 License: 
* 🔗 Links: Below 👇🏽

## 🖇️ $name Links
* GitHub Repository: 
* Official Website: 
* LinkedIn Page:
* X Page: 
* Profile in The AI Engineer: https://github.com/theaiengineer/awesome-opensource-ai-engineering/blob/main/libraries/$filename

---
🧙🏽 Follow [The AI Engineer](https://www.linkedin.com/company/theaiengineer/) for more about $name and daily insights tailored to AI engineers. Subscribe to our [newsletter](http://theaiengineerco.substack.com). We are the AI community for hackers!

♻️ Repost this to help $name become more popular. Support AI Open-Source Libraries!

⚠️ If you want me to highlight your favorite AI library, open-source or not, please share it in the comments section!

---
🧙🏽 Follow @theaiengineerco for more about $name & daily insights tailored to AI engineers. Subscribe to our newsletter. We are the AI community for hackers!

⚠️ If you want me to highlight your favorite AI library, please share it below 👇🏽!
EOF
    fi
done
