# Script to write CQ20687.md - content will be injected
import os

output_path = r'C:\FOC\Workspace\Finished\CQ20687.md'

# The content is too large to inline here; we'll use a different approach
print(f"Output path: {output_path}")
print(f"Directory exists: {os.path.exists(os.path.dirname(output_path))}")
