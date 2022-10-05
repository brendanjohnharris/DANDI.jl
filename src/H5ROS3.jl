module H5ROS3

function h5read(u::String)
    # Straightforward command-line approach. Will want to replace this with a lower-level ccal to libhdf5 in the future
    f = tempname()
    H = `h5dump --filedriver=ros3 --output=$f $u`
    run(H)
end

function stream(u::URL)
    # https://dandiarchive.s3.amazonaws.com/blobs/16e/8ac/16e8ac26-9741-49b4-935e-1ef5de0f04ce
end
