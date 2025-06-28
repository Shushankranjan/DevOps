import os
name = os.getenv("NAME", "DevOps")
print(f"Hello, {name} from Docker!")