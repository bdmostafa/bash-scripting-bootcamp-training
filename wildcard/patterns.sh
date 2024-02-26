#!/bin/bash

# # Example patterns for complex pattern matching
# input="abc123def456ghi"

# # Matching digits in the input string using repetition
# if [[ $input =~ [0-9]+ ]]; then
#     echo "Digits found: ${BASH_REMATCH[0]}"
# fi

# # Matching alternating patterns in the input string
# if [[ $input =~ (abc|def|ghi) ]]; then
#     echo "Alternating pattern found: ${BASH_REMATCH[0]}"
# fi

# # Matching groups of characters in the input string
# if [[ $input =~ (abc[0-9]+def[0-9]+ghi) ]]; then
#     echo "Grouped pattern found: ${BASH_REMATCH[0]}"
# fi


# # Example string containing multiple patterns
# # Example input string
# input="apple123 banana789 orange456 pineapple"

# # Anchors:
# # Match words that start with "apple"
# if [[ $input =~ ^apple ]]; then
#     echo "Anchor - Start of line: ${BASH_REMATCH[0]}"
# fi

# # Match words that end with "pineapple"
# if [[ $input =~ pineapple$ ]]; then
#     echo "Anchor - End of line: ${BASH_REMATCH[0]}"
# fi

# # Match words that exactly match "banana789"
# # Not working because of the first pattern (^banana789$) expects "banana789" to be the entire string.
# # if [[ $input =~ ^banana789$ ]]; then
# #     echo "Exact match: ${BASH_REMATCH[0]}"
# # fi

# # Match words that exactly match "banana789"
# # The second pattern ((^| )banana789($| )) allows "banana789" to be part of a larger string, as long as it's surrounded by spaces or at the beginning or end of the string.
# if [[ $input =~ (^| )banana789($| ) ]]; then
#     echo "Exact match: ${BASH_REMATCH[0]}"
# fi

# # Quantifiers:
# # Match numbers consisting of three digits
# if [[ $input =~ [0-9]{3} ]]; then
#     echo "Quantifier - Three digits: ${BASH_REMATCH[0]}"
# fi

# # Negation:
# # Match words that do not contain digits
# if [[ $input =~ ^[^0-9]*$ ]]; then
#     echo "Negation - No digits: ${BASH_REMATCH[0]}"
# fi


# # Match words that contain "na" followed by any single character
# if [[ $input =~ na. ]]; then
#     echo "Character Range - 'na' followed by any character: ${BASH_REMATCH[0]}"
# fi


# # Example string containing multiple patterns
# string="1234 56789 101112"

# # Match exactly 4 digits
# if [[ $string =~ [0-9]{4} ]]; then
#     echo "Exactly 4 digits: ${BASH_REMATCH[0]}"
# fi

# # Match at least 3 and at most 5 digits
# if [[ $string =~ [0-9]{3,5} ]]; then
#     echo "3 to 5 digits: ${BASH_REMATCH[0]}"
# fi

# string2="12ee 56789 101112"

# # Match exactly 4 digits
# if [[ $string2 =~ [0-9]{4} ]]; then
#     echo "Exactly 4 digits: ${BASH_REMATCH[0]}"
# fi

# # Match at least 3 and at most 5 digits
# if [[ $string2 =~ [0-9]{3,5} ]]; then
#     echo "3 to 5 digits: ${BASH_REMATCH[0]}"
# fi