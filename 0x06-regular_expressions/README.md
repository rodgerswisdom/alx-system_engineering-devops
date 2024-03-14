# Regular Expressions Curriculum

This repository contains solutions to tasks related to regular expressions (regex) as part of the SE Foundations curriculum. The curriculum covers various aspects of regex, including basic and advanced concepts, along with practical exercises.

## Overview

- **Average Score**: 62.99%
- **Project**: Regular Expression
- **Author**: Sylvain Kalache
- **Weight**: 1
- **Duration**: Ongoing second chance project, started on Mar 12, 2024, and must end by Mar 16, 2024.

### In a Nutshell

- **Auto QA review**: 1.0/24 mandatory & 0.0/9 optional
- **Altogether**: 4.17%
  - **Mandatory**: 4.17%
  - **Optional**: 0.0%
- **Calculation**: 4.17% + (4.17% * 0.0%) == 4.17%

## Concepts Covered

- **Regular Expression**: In this project, we delve into the usage of regular expressions using Oniguruma, a library commonly used with Ruby.

## Background Context

The project revolves around building regular expressions using the Oniguruma library. Here's a snippet of Ruby code demonstrating how to use regular expressions:

```ruby
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
```

## Resources

To enhance your understanding and proficiency with regular expressions, consider the following resources:

- [Regular expressions - basics](https://www.regular-expressions.info/tutorial.html)
- [Regular expressions - advanced](https://www.regular-expressions.info/advanced.html)
- [Rubular](https://rubular.com/): Your best friend for testing Ruby regular expressions
- [Use a regular expression against a problem: now you have 2 problems](https://blog.codinghorror.com/regular-expressions-now-you-have-two-problems/)
- [Learn Regular Expressions with simple, interactive exercises](https://regexone.com/)

## Requirements

### General

- Allowed editors: vi, vim, emacs
- All files interpreted on Ubuntu 20.04 LTS
- All files should end with a new line
- A `README.md` file is mandatory
- All Bash script files must be executable
- The first line of all Bash scripts should be exactly `#!/usr/bin/env ruby`
- All regex must be built for the Oniguruma library

### Quiz Questions

Quiz questions are integrated into the tasks for each respective regex problem.

## Tasks

Below are the tasks you need to accomplish:

1. **Simply Matching School**
   - **Requirements**: Create a regular expression that matches "School"
   - **File**: `0-simply_match_school.rb`

2. **Repetition Token #0**
   - **Requirements**: Find the regular expression that matches specified cases
   - **File**: `1-repetition_token_0.rb`

3. **Repetition Token #1**
   - **Requirements**: Find the regular expression that matches specified cases
   - **File**: `2-repetition_token_1.rb`

4. **Repetition Token #2**
   - **Requirements**: Find the regular expression that matches specified cases
   - **File**: `3-repetition_token_2.rb`

5. **Repetition Token #3**
   - **Requirements**: Find the regular expression that matches specified cases without square brackets
   - **File**: `4-repetition_token_3.rb`

6. **Not Quite HBTN Yet**
   - **Requirements**: Create a regular expression that matches a specific pattern
   - **File**: `5-beginning_and_end.rb`

7. **Call Me Maybe**
   - **Requirements**: Create a regular expression that matches a 10-digit phone number
   - **File**: `6-phone_number.rb`

8. **OMG WHY ARE YOU SHOUTING?**
   - **Requirements**: Create a regular expression that matches only capital letters
   - **File**: `7-OMG_WHY_ARE_YOU_SHOUTING.rb`

## Repository Information

- **GitHub Repository**: [alx-system_engineering-devops](https://github.com/alx-system_engineering-devops)
- **Directory**: `0x06-regular_expressions`
- **License**: Copyright © 2024 ALX, All rights reserved.
