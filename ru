char_map = {
    'A': [
        "01110",
        "10001",
        "10001",
        "11111",
        "10001",
        "10001",
        "10001",
        "10001",
        "10001"
    ],
    'B': [
        "11110",
        "10001",
        "10001",
        "11110",
        "10001",
        "10001",
        "10001",
        "10001",
        "11110"
    ],
    'C': [
        "01111",
        "10000",
        "10000",
        "10000",
        "10000",
        "10000",
        "10000",
        "10000",
        "01111"
    ],
    'T': [
        "11111",
        "00100",
        "00100",
        "00100",
        "00100",
        "00100",
        "00100",
        "00100",
        "00100"
    ],
    'S': [
        "01111",
        "10000",
        "10000",
        "01111",
        "00001",
        "00001",
        "00001",
        "00001",
        "11110"
    ],
    'Z': [
        "11111",
        "00010",
        "00010",
        "00100",
        "00100",
        "01000",
        "01000",
        "10000",
        "11111"
    ],
    'R': [
        "11110",
        "10001",
        "10001",
        "11110",
        "10100",
        "10010",
        "10001",
        "10001",
        "10001"
    ]
}

# Step 2: Reverse map for quick lookup
_grid_to_char = {"\n".join(v): k for k, v in char_map.items()}

# Step 3: Function to decode the grid
def decode_14_segment_display(grid):
    result = []
    num_cols = len(grid[0])
    col = 0
    while col < num_cols:  # Extract the 9x5 grid for the current character
        char_grid = [row[col:col + 5] for row in grid]
        # Check if it matches a known character
        char_key = "\n".join(char_grid)
        if char_key in _grid_to_char:
            result.append(_grid_to_char[char_key])
            col += 5  # Skip to the next character
        else:
            col += 1  # Skip padding or unrecognized columns
    return "".join(result)

# Input and decoding
grid = [input().strip() for _ in range(9)]
print(decode_14_segment_display(grid))