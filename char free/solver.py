from PIL import Image
import os

gif = Image.open("char_walk_right.gif")

os.makedirs("frames", exist_ok=True)

for frame in range(gif.n_frames):
    gif.seek(frame)
    gif.save(f"framesk/frame_{frame}.png")
