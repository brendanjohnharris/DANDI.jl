# import os

# os.system("dandi download https://api.dandiarchive.org/api/assets/ff41f1ad-2aa7-42b3-8449-bab5071740f8/download/")

cd("./test/Python/")
using HDF5
f = h5open("sub-661968859_ses-682746585_behavior+ophys.nwb")
length(f["units"]["pos_x"])
